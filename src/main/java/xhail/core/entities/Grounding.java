/**
 * 
 */
package xhail.core.entities;

import java.io.OutputStream;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.LinkedHashSet;
import java.util.Map;
import java.util.Set;
import java.util.TreeSet;

import org.apache.commons.lang3.StringUtils;

import xhail.core.Buildable;
import xhail.core.Config;
import xhail.core.Dialler;
import xhail.core.Logger;
import xhail.core.Utils;
import xhail.core.parser.Parser;
import xhail.core.statements.Display;
import xhail.core.statements.Example;
import xhail.core.statements.ModeB;
import xhail.core.statements.ModeH;
import xhail.core.terms.Atom;
import xhail.core.terms.Clause;
import xhail.core.terms.Literal;
import xhail.core.terms.Scheme;
import xhail.core.terms.SchemeTerm;
import xhail.core.terms.Term;
import xhail.core.terms.Variable;

/**
 * @author stefano
 *
 */
public class Grounding implements Solvable {

	public static class Builder implements Buildable<Grounding> {

		private Set<Literal> covered = new HashSet<>();
		private Set<Atom> delta = new HashSet<>();
		private Set<Atom> facts = new HashSet<>();
		private Set<Atom> model = new HashSet<>();
		private Problem problem;
		private Set<Literal> uncovered = new HashSet<>();

		public Builder(Problem problem) {
			if (null == problem)
				throw new IllegalArgumentException("Illegal 'problem' argument in Grounding.Builder(Problem): " + problem);
			this.problem = problem;
		}

		public Builder addAtom(Atom atom) {
			if (null == atom)
				throw new IllegalArgumentException("Illegal 'atom' argument in Grounding.Builder.addAtom(Atom): " + atom);
			if (atom.getIdentifier().startsWith("abduced_")) {
				delta.add(new Atom.Builder(atom.getIdentifier().substring("abduced_".length())).addTerms(atom.getTerms()).build());
			} else {
				if (problem.getConfig().isFull() && problem.hasDisplays() && problem.lookup(atom))
					model.add(atom);
				facts.add(atom);
			}
			return this;
		}

		public Builder addAtoms(Collection<Atom> atoms) {
			if (null == atoms)
				throw new IllegalArgumentException("Illegal 'atoms' argument in Grounding.Builder.addAtoms(Collection<Atom>): " + atoms);
			for (Atom atom : atoms)
				addAtom(atom);
			return this;
		}

		@Override
		public Grounding build() {
			covered.clear();
			uncovered.clear();
			for (Example example : problem.getExamples()) {
				Atom atom = example.getAtom();
				if (example.isNegated() != facts.contains(atom))
					covered.add(new Literal.Builder(atom).setNegated(example.isNegated()).build());
				else
					uncovered.add(new Literal.Builder(atom).setNegated(example.isNegated()).build());
			}
			return new Grounding(this);
		}

		public Builder clear() {
			this.covered.clear();
			this.delta.clear();
			this.facts.clear();
			this.model.clear();
			this.uncovered.clear();
			return this;
		}

		public Builder parse(Collection<String> answer) {
			if (null == answer)
				throw new IllegalArgumentException("Illegal 'answer' argument in Grounding.Builder.parse(Collection<String>): " + answer);
			for (String atom : answer)
				addAtom(Parser.parseToken(atom));
			return this;
		}

		public Builder removeAtom(Atom atom) {
			if (null == atom)
				throw new IllegalArgumentException("Illegal 'atom' argument in Grounding.Builder.removeAtom(Atom): " + atom);
			if (atom.getIdentifier().startsWith("abduced_")) {
				delta.remove(new Atom.Builder(atom.getIdentifier().substring("abduced_".length())).addTerms(atom.getTerms()).build());
			} else {
				if (problem.getConfig().isFull() && problem.hasDisplays() && problem.lookup(atom))
					model.remove(atom);
				facts.remove(atom);
			}
			return this;
		}

		public Builder removeAtoms(Collection<Atom> atoms) {
			if (null == atoms)
				throw new IllegalArgumentException("Illegal 'atoms' argument in Grounding.Builder.removeAtoms(Collection<Atom>): " + atoms);
			for (Atom atom : atoms)
				removeAtom(atom);
			return this;
		}

	}

	private final Config config;

	private final int count;

	private final Literal[] covered;

	private final Atom[] delta;

	private final Set<Atom> facts;

	private Clause[] generalisation;

	private Clause[] kernel;

	private final Atom[] model;

	private final Problem problem;

	private final Map<SchemeTerm, Set<Atom>> table;

	private final Literal[] uncovered;

	private Grounding(Builder builder) {
		if (null == builder)
			throw new IllegalArgumentException("Illegal 'builder' argument in Grounding(Grounding.Builder): " + builder);
		this.config = builder.problem.getConfig();
		this.count = builder.delta.size();
		this.covered = builder.covered.toArray(new Literal[builder.covered.size()]);
		this.delta = builder.delta.toArray(new Atom[builder.delta.size()]);
		this.facts = builder.facts;
		this.model = builder.model.toArray(new Atom[builder.model.size()]);
		this.problem = builder.problem;
		this.table = SchemeTerm.lookup(builder.problem.getModeHs(), builder.problem.getModeBs(), builder.facts);
		this.uncovered = builder.uncovered.toArray(new Literal[builder.uncovered.size()]);
	}

	public final String asBadSolution() {
		return String.format("bad_solution:-%snumber_abduced(%d).", count > 0 ? StringUtils.join(delta, ",") + "," : "", count);
	}

	public String[] asClauses() {
		Set<String> result = new LinkedHashSet<>();
		Clause[] clauses = getGeneralisation();
		if (clauses.length > 0) {
			result.add("{ use_clause_literal(V1,0) }:-clause(V1).");

			boolean hasLiterals = false;
			for (int clauseId = 0; !hasLiterals && clauseId < clauses.length; clauseId++)
				hasLiterals = clauses[clauseId].getBody().length > 0;

			if (hasLiterals)
				result.add("{ use_clause_literal(V1,V2) }:-clause(V1),literal(V1,V2).");

			for (int clauseId = 0; clauseId < clauses.length; clauseId++) {
				result.add(String.format("%% %s", clauses[clauseId]));
				Literal[] literals = clauses[clauseId].getBody();
				result.add(String.format("clause(%d).", clauseId));
				for (int literalId = 1; literalId <= literals.length; literalId++)
					result.add(String.format("literal(%d,%d).", clauseId, literalId));

				for (int level = 0; level < clauses[clauseId].getLevels(); level++)
					result.add(String.format(":-not clause_level(%d,%d),clause_level(%d,%d).", clauseId, level, clauseId, 1 + level));

				result.add(String.format("clause_level(%d,0):-use_clause_literal(%d,0).", clauseId, clauseId));
				for (int literalId = 1; literalId <= literals.length; literalId++)
					result.add(String.format("clause_level(%d,%d):-use_clause_literal(%d,%d).", clauseId, literals[literalId - 1].getLevel(), clauseId,
							literalId));

				Atom head = clauses[clauseId].getHead();
				result.add(String.format("#minimize[ use_clause_literal(%d,0) =%d @%d ].", clauseId, head.getWeight(), head.getPriority()));

				for (int literalId = 1; literalId <= literals.length; literalId++)
					result.add(String.format("#minimize[ use_clause_literal(%d,%d) =%d @%d ].", clauseId, literalId, //
							literals[literalId - 1].getWeight(), literals[literalId - 1].getPriority()));

				Set<String> set = new LinkedHashSet<>();
				for (String type : head.getTypes())
					set.add(type);
				String[] array = new String[literals.length];
				for (int literalId = 1; literalId <= literals.length; literalId++) {
					String variables = literals[literalId - 1].hasVariables() ? "," + StringUtils.join(literals[literalId - 1].getVariables(), ",") : "";
					array[literalId - 1] = String.format("try_clause_literal(%d,%d%s)", clauseId, literalId, variables);
					for (String type : literals[literalId - 1].getTypes())
						set.add(type);
				}
				String typesAll = !set.isEmpty() ? "," + StringUtils.join(set, ",") : "";
				String literalsAll = array.length > 0 ? "," + StringUtils.join(array, ",") : "";
				result.add(String.format("%s:-use_clause_literal(%d,0)%s%s.", head, clauseId, literalsAll, typesAll));

				for (int literalId = 1; literalId <= literals.length; literalId++) {
					String variables = literals[literalId - 1].hasVariables() ? "," + StringUtils.join(literals[literalId - 1].getVariables(), ",") : "";
					String types = literals[literalId - 1].hasTypes() ? "," + StringUtils.join(literals[literalId - 1].getTypes(), ",") : "";
					result.add(String.format("try_clause_literal(%d,%d%s):-use_clause_literal(%d,%d),%s%s.", //
							clauseId, literalId, variables, clauseId, literalId, literals[literalId - 1], types));
					result.add(String.format("try_clause_literal(%d,%d%s):-not use_clause_literal(%d,%d)%s.", //
							clauseId, literalId, variables, clauseId, literalId, types));
				}

			}
		}
		return result.toArray(new String[result.size()]);
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Grounding other = (Grounding) obj;
		if (!Arrays.equals(covered, other.covered))
			return false;
		if (!Arrays.equals(delta, other.delta))
			return false;
		if (facts == null) {
			if (other.facts != null)
				return false;
		} else if (!facts.equals(other.facts))
			return false;
		if (!Arrays.equals(generalisation, other.generalisation))
			return false;
		if (!Arrays.equals(kernel, other.kernel))
			return false;
		if (!Arrays.equals(model, other.model))
			return false;
		if (table == null) {
			if (other.table != null)
				return false;
		} else if (!table.equals(other.table))
			return false;
		if (problem == null) {
			if (other.problem != null)
				return false;
		} else if (!problem.equals(other.problem))
			return false;
		if (!Arrays.equals(uncovered, other.uncovered))
			return false;
		return true;
	}

	public final String[] getBackground() {
		return problem.getBackground();
	}

	public final Config getConfig() {
		return config;
	}

	public final int getCount() {
		return count;
	}

	public final Literal[] getCovered() {
		return covered;
	}

	public final Atom[] getDelta() {
		return delta;
	}

	public final Display[] getDisplays() {
		return problem.getDisplays();
	}

	public final String[] getDomains() {
		return problem.getDomains();
	}

	public final Example[] getExamples() {
		return problem.getExamples();
	}

	public final Collection<Atom> getFacts() {
		return facts;
	}

	public final Collection<String> getFilters() {
		Set<String> result = new TreeSet<>();
		result.add("#hide.");
		// result.add("#show display_fact/1.");
		// result.add("#show covered_example/2.");
		// result.add("#show number_abduced/1.");
		// result.add("#show uncovered_example/2.");
		result.add("#show use_clause_literal/2.");
		for (Display display : problem.getDisplays())
			result.add(String.format("#show %s/%d.", display.getIdentifier(), display.getArity()));
		for (Example example : problem.getExamples())
			result.add(String.format("#show %s/%d.", example.getAtom().getIdentifier(), example.getAtom().getArity()));
		return result;
	}

	public final Clause[] getGeneralisation() {
		if (null == generalisation) {
			Set<Clause> set = new LinkedHashSet<>();
			for (Clause clause : getKernel()) {
				Map<Term, Variable> map = new HashMap<>();
				Clause.Builder builder = new Clause.Builder();
				Atom atom = clause.getHead();
				for (ModeH mode : problem.getModeHs()) {
					Scheme scheme = mode.getScheme();
					if (SchemeTerm.subsumes(scheme, atom, facts))
						builder.setHead((Atom) scheme.generalises(atom, map));
				}
				for (Literal literal : clause.getBody()) {
					atom = literal.getAtom();
					for (ModeB mode : problem.getModeBs()) {
						Scheme scheme = mode.getScheme();
						if (SchemeTerm.subsumes(scheme, atom, facts))
							builder.addLiteral(new Literal.Builder((Atom) scheme.generalises(atom, map)).setNegated(literal.isNegated())
									.setLevel(literal.getLevel()).build());
					}
				}
				set.add(builder.build());
			}
			generalisation = set.toArray(new Clause[set.size()]);
		}
		return generalisation;
	}

	public final Clause[] getKernel() {
		if (null == kernel) {
			Set<Clause> set = new LinkedHashSet<>();
			for (Atom alpha : delta)
				for (ModeH head : problem.getModeHs()) {
					Scheme scheme = head.getScheme();
					if (SchemeTerm.subsumes(scheme, alpha, facts)) {
						Clause.Builder builder = new Clause.Builder().setHead(//
								new Atom.Builder(alpha).setWeight(head.getWeigth()).setPriority(head.getPriority()).build());

						Collection<Term> substitutes = SchemeTerm.findSubstitutes(scheme, alpha);
						if (null != substitutes) {
							int level = 0;
							Set<Term> usables = new HashSet<>(substitutes);
							Set<Term> used = new HashSet<Term>();
							Set<Term> next = new HashSet<Term>();
							while (!usables.isEmpty()) {
								level += 1;
								for (ModeB mode : problem.getModeBs()) {
									scheme = mode.getScheme();
									if (mode.isNegated()) {
										Map<Atom, Collection<Term>> found = SchemeTerm.generateAndOutput(scheme, usables, table, facts);
										for (Atom atom : found.keySet()) {
											builder.addLiteral(new Literal.Builder( //
													new Atom.Builder(atom).setWeight(mode.getWeigth()).setPriority(mode.getPriority()).build() //
											).setNegated(mode.isNegated()).setLevel(level).build());
											next.addAll(found.get(atom));
										}
									} else {
										Map.Entry<Collection<Atom>, Collection<Term>> found = SchemeTerm.matchAndOutput(scheme, table.get(scheme), usables);
										for (Atom atom : found.getKey())
											builder.addLiteral(new Literal.Builder( //
													new Atom.Builder(atom).setWeight(mode.getWeigth()).setPriority(mode.getPriority()).build() //
											).setNegated(mode.isNegated()).setLevel(level).build());
										next.addAll(found.getValue());
									}
								}
								used.addAll(usables);
								next.removeAll(used);
								usables.clear();
								usables.addAll(next);
								next.clear();
							}
						}
						set.add(builder.build());
					}
				}
			kernel = set.toArray(new Clause[set.size()]);
		}
		return kernel;
	}

	public final ModeB[] getModeBs() {
		return problem.getModeBs();
	}

	public final ModeH[] getModeHs() {
		return problem.getModeHs();
	}

	public final Atom[] getModel() {
		return model;
	}

	public final Problem getProblem() {
		return problem;
	}

	public final Map<SchemeTerm, Set<Atom>> getTable() {
		return table;
	}

	public final Literal[] getUncovered() {
		return uncovered;
	}

	public final boolean hasBackground() {
		return problem.hasBackground();
	}

	public final boolean hasCovered() {
		return covered.length > 0;
	}

	public final boolean hasDelta() {
		return delta.length > 0;
	}

	public final boolean hasDisplays() {
		return problem.hasDisplays();
	}

	public final boolean hasDomains() {
		return problem.getDomains().length > 0;
	}

	public final boolean hasExamples() {
		return problem.hasExamples();
	}

	public final boolean hasGeneralisation() {
		return getGeneralisation().length > 0;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + Arrays.hashCode(covered);
		result = prime * result + Arrays.hashCode(delta);
		result = prime * result + ((facts == null) ? 0 : facts.hashCode());
		result = prime * result + Arrays.hashCode(generalisation);
		result = prime * result + Arrays.hashCode(kernel);
		result = prime * result + Arrays.hashCode(model);
		result = prime * result + ((table == null) ? 0 : table.hashCode());
		result = prime * result + ((problem == null) ? 0 : problem.hashCode());
		result = prime * result + Arrays.hashCode(uncovered);
		return result;
	}

	public final boolean hasKernel() {
		return getKernel().length > 0;
	}

	public final boolean hasModel() {
		return model.length > 0;
	}

	public final boolean hasModes() {
		return problem.hasModes();
	}

	public final boolean hasUncovered() {
		return uncovered.length > 0;
	}

	public final boolean lookup(Atom atom) {
		if (null == atom)
			throw new IllegalArgumentException("Illegal 'atom' argument in Grounding.lookup(Atom): " + atom);
		return problem.lookup(atom);
	}

	public final boolean needsInduction() {
		return getGeneralisation().length > 0;
	}

	@Override
	public boolean save(int iter, OutputStream stream) {
		return Utils.save(this, iter, stream);
	}

	public Values solve(Values values, Answers.Builder builder) {
		if (null == values)
			throw new IllegalArgumentException("Illegal 'values' argument in Grounding.solve(int, Values, Answers.Builder): " + values);
		if (null == builder)
			throw new IllegalArgumentException("Illegal 'builder' argument in Grounding.solve(int, Values, Answers.Builder): " + builder);
		Values result = values;
		if (this.needsInduction()) {
			Dialler dialler = new Dialler.Builder(config, this, values).build();
			Map.Entry<Values, Collection<Collection<String>>> entry = Answers.timeInduction(1, dialler);
			result = entry.getKey();
			for (Collection<String> output : entry.getValue()) {
				if (builder.size() > 0 && config.isTerminate())
					break;
				Hypothesis hypothesis = Answers.timeDeduction(this, output);
				if (config.isDebug())
					Logger.message(String.format("*** Info  (%s): found Hypothesis: %s", Logger.SIGNATURE, StringUtils.join(hypothesis.getHypotheses(), " ")));
				builder.put(entry.getKey(), new Answer.Builder(this).setHypothesis(hypothesis).build());
			}
		} else
			builder.put(new Values(), new Answer.Builder(this).build());
		return result;
	}

	@Override
	public String toString() {
		return "Grounding [\n  covered=" + Arrays.toString(covered) + ",\n  delta=" + Arrays.toString(delta) + ",\n  facts=" + facts + ",\n  generalisation="
				+ Arrays.toString(generalisation) + ",\n  kernel=" + Arrays.toString(kernel) + ",\n  model=" + Arrays.toString(model) + ",\n  table=" + table
				+ ",\n  problem=" + problem + ",\n  uncovered=" + Arrays.toString(uncovered) + "\n]";
	}

}
