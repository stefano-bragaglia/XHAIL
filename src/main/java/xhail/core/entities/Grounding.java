/**
 * 
 */
package xhail.core.entities;

import java.io.OutputStream;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.LinkedHashSet;
import java.util.Map;
import java.util.Set;

import xhail.core.Buildable;
import xhail.core.Config;
import xhail.core.Dialer;
import xhail.core.Utils;
import xhail.core.statements.Display;
import xhail.core.statements.Example;
import xhail.core.statements.ModeB;
import xhail.core.statements.ModeH;
import xhail.core.terms.Atom;
import xhail.core.terms.Clause;
import xhail.core.terms.Literal;
import xhail.core.terms.Placemarker;
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
			if (atom.getIdentifier().startsWith("abduced_"))
				delta.add(new Atom.Builder(atom.getIdentifier().substring("abduced_".length())).addTerms(atom.getTerms()).build());
			else if (atom.getIdentifier().startsWith("covered_example") && 2 == atom.getArity()) {
				Term term = atom.getTerm(0);
				if (term instanceof Atom) {
					boolean negated = ((Atom) term).getIdentifier().equals("true");
					covered.add(new Literal.Builder((Atom) atom.getTerm(1)).setNegated(negated).build());
				}
			} else if (atom.getIdentifier().startsWith("uncovered_example") && 2 == atom.getArity()) {
				Term term = atom.getTerm(0);
				if (term instanceof Atom) {
					boolean negated = ((Atom) term).getIdentifier().equals("true");
					uncovered.add(new Literal.Builder((Atom) atom.getTerm(1)).setNegated(negated).build());
				}
			} else if (atom.getIdentifier().startsWith("display_fact") && 1 == atom.getArity())
				model.add((Atom) atom.getTerm(0));
			else
				facts.add(atom);
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

		public Builder removeAtom(Atom atom) {
			if (null == atom)
				throw new IllegalArgumentException("Illegal 'atom' argument in Grounding.Builder.removeAtom(Atom): " + atom);
			if (atom.getIdentifier().startsWith("abduced_"))
				delta.remove(new Atom.Builder(atom.getIdentifier().substring("abduced_".length())).addTerms(atom.getTerms()).build());
			else if (atom.getIdentifier().startsWith("covered_example") && 2 == atom.getArity()) {
				Term term = atom.getTerm(0);
				if (term instanceof Atom) {
					boolean negated = ((Atom) term).getIdentifier().equals("true");
					covered.remove(new Literal.Builder((Atom) atom.getTerm(1)).setNegated(negated).build());
				}
			} else if (atom.getIdentifier().startsWith("uncovered_example") && 2 == atom.getArity()) {
				Term term = atom.getTerm(0);
				if (term instanceof Atom) {
					boolean negated = ((Atom) term).getIdentifier().equals("true");
					uncovered.remove(new Literal.Builder((Atom) atom.getTerm(1)).setNegated(negated).build());
				}
			} else if (atom.getIdentifier().startsWith("display_fact") && 1 == atom.getArity())
				model.remove((Atom) atom.getTerm(0));
			else
				facts.remove(atom);
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

	public static final Map<SchemeTerm, Set<Atom>> getParts(final Collection<ModeB> modes, final Collection<Atom> facts) {
		if (null == modes)
			throw new IllegalArgumentException("Illegal 'modes' argument in Grounding.getParts(Collection<ModeB>, Collection<Atom>): " + modes);
		Map<SchemeTerm, Set<Atom>> result = new HashMap<>();
		for (ModeB mode : modes) {
			Scheme scheme = mode.getScheme();
			result.put(scheme, new HashSet<>());
			for (Placemarker placemarker : scheme.getPlacemarkers())
				if (!result.containsKey(placemarker))
					result.put(placemarker, new HashSet<>());
		}
		for (SchemeTerm scheme : result.keySet()) {
			Set<Atom> part = result.get(scheme);
			for (Atom fact : facts) {
				if (scheme.subsumes(fact, facts))
					part.add(fact);
			}
		}
		return result;
	}

	private final Set<Literal> covered;

	private final Set<Atom> delta;

	private final Set<Atom> facts;

	private Set<Clause> generalisation;

	private Set<Clause> kernel;

	private final Set<Atom> model;

	private final Map<SchemeTerm, Set<Atom>> parts;

	private final Problem problem;

	private final Set<Literal> uncovered;

	private Grounding(Builder builder) {
		if (null == builder)
			throw new IllegalArgumentException("Illegal 'builder' argument in Grounding(Grounding.Builder): " + builder);
		this.covered = builder.covered;
		this.delta = builder.delta;
		this.facts = builder.facts;
		this.model = builder.model;
		this.parts = getParts(builder.problem.getModeBs(), builder.facts);
		this.problem = builder.problem;
		this.uncovered = builder.uncovered;
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
		if (covered == null) {
			if (other.covered != null)
				return false;
		} else if (!covered.equals(other.covered))
			return false;
		if (delta == null) {
			if (other.delta != null)
				return false;
		} else if (!delta.equals(other.delta))
			return false;
		if (facts == null) {
			if (other.facts != null)
				return false;
		} else if (!facts.equals(other.facts))
			return false;
		if (generalisation == null) {
			if (other.generalisation != null)
				return false;
		} else if (!generalisation.equals(other.generalisation))
			return false;
		if (kernel == null) {
			if (other.kernel != null)
				return false;
		} else if (!kernel.equals(other.kernel))
			return false;
		if (model == null) {
			if (other.model != null)
				return false;
		} else if (!model.equals(other.model))
			return false;
		if (parts == null) {
			if (other.parts != null)
				return false;
		} else if (!parts.equals(other.parts))
			return false;
		if (problem == null) {
			if (other.problem != null)
				return false;
		} else if (!problem.equals(other.problem))
			return false;
		if (uncovered == null) {
			if (other.uncovered != null)
				return false;
		} else if (!uncovered.equals(other.uncovered))
			return false;
		return true;
	}

	public final Collection<String> getBackground() {
		return problem.getBackground();
	}

	public final Config getConfig() {
		return problem.getConfig();
	}

	public final Collection<Literal> getCovered() {
		return covered;
	}

	public final Collection<Atom> getDelta() {
		return delta;
	}

	public final Collection<Display> getDisplays() {
		return problem.getDisplays();
	}

	public final Collection<Example> getExamples() {
		return problem.getExamples();
	}

	public final Collection<Clause> getGeneralisation() {
		if (null == generalisation) {
			generalisation = new LinkedHashSet<>();
			for (Clause clause : getKernel()) {
				Map<Term, Variable> map = new HashMap<>();
				Clause.Builder builder = new Clause.Builder();
				Atom atom = clause.getHead();
				for (ModeH mode : problem.getModeHs()) {
					Scheme scheme = mode.getScheme();
					if (scheme.subsumes(atom, facts))
						builder.setHead((Atom) scheme.generalises(atom, map));
				}
				for (Literal literal : clause.getBody()) {
					atom = literal.getAtom();
					for (ModeB mode : problem.getModeBs()) {
						Scheme scheme = mode.getScheme();
						if (scheme.subsumes(atom, facts))
							builder.addLiteral(new Literal.Builder((Atom) scheme.generalises(atom, map)).setNegated(literal.isNegated())
									.setLevel(literal.getLevel()).build());
					}
				}
				generalisation.add(builder.build());
			}
		}
		return generalisation;
	}

	public final Collection<Clause> getKernel() {
		if (null == kernel) {
			kernel = new LinkedHashSet<>();
			for (Atom alpha : delta)
				for (ModeH head : problem.getModeHs()) {
					Scheme scheme = head.getScheme();
					if (scheme.subsumes(alpha, facts)) {
						Clause.Builder builder = new Clause.Builder().setHead(new Atom.Builder(alpha).setWeight(head.getWeigth())
								.setPriority(head.getPriority()).build());

						int level = 0;
						Set<Term> usables = new HashSet<>(alpha.filters(scheme));
						Set<Term> used = new HashSet<Term>();
						Set<Term> next = new HashSet<Term>();
						while (!usables.isEmpty()) {
							level += 1;
							for (ModeB mode : problem.getModeBs()) {
								scheme = mode.getScheme();
								if (mode.isNegated()) {
									Map<Term, Collection<Term>> tests = scheme.matching(usables, parts);
									if (null != tests) {
										for (Term term : tests.keySet())
											if (term instanceof Atom) {
												Atom test = (Atom) term;
												if (!facts.contains(test)) {
													Collection<Term> found = tests.get(term);
													builder.addLiteral(new Literal.Builder(new Atom.Builder(test).setWeight(mode.getWeigth())
															.setPriority(mode.getPriority()).build()).setNegated(mode.isNegated()).setLevel(level).build());
													next.addAll(found);
												}
											}
									}
								} else
									for (Atom test : parts.get(scheme)) {
										Collection<Term> found = test.matches(scheme, usables, facts);
										if (null != found) {
											builder.addLiteral(new Literal.Builder(new Atom.Builder(test).setWeight(mode.getWeigth())
													.setPriority(mode.getPriority()).build()).setNegated(mode.isNegated()).setLevel(level).build());
											next.addAll(found);
										}
									}
							}
							used.addAll(usables);
							next.removeAll(used);
							usables.clear();
							usables.addAll(next);
							next.clear();
						}

						kernel.add(builder.build());
					}
				}
		}
		return kernel;
	}

	public final Collection<ModeB> getModeBs() {
		return problem.getModeBs();
	}

	public final Collection<ModeH> getModeHs() {
		return problem.getModeHs();
	}

	public final Collection<Atom> getModel() {
		return model;
	}

	public final Problem getProblem() {
		return problem;
	}

	public final Collection<Literal> getUncovered() {
		return uncovered;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((covered == null) ? 0 : covered.hashCode());
		result = prime * result + ((delta == null) ? 0 : delta.hashCode());
		result = prime * result + ((facts == null) ? 0 : facts.hashCode());
		result = prime * result + ((generalisation == null) ? 0 : generalisation.hashCode());
		result = prime * result + ((kernel == null) ? 0 : kernel.hashCode());
		result = prime * result + ((model == null) ? 0 : model.hashCode());
		result = prime * result + ((parts == null) ? 0 : parts.hashCode());
		result = prime * result + ((problem == null) ? 0 : problem.hashCode());
		result = prime * result + ((uncovered == null) ? 0 : uncovered.hashCode());
		return result;
	}

	public final boolean needsInduction() {
		return !getKernel().isEmpty();
	}

	public final boolean needsModel() {
		return problem.needsModel();
	}

	@Override
	public boolean save(OutputStream stream) {
		return Utils.save(this, stream);
	}

	public Values solve(Values values, Answers.Builder builder) {
		if (null == values)
			throw new IllegalArgumentException("Illegal 'values' argument in Grounding.solve(Values, Answers.Builder): " + values);
		if (null == builder)
			throw new IllegalArgumentException("Illegal 'builder' argument in Grounding.solve(Values, Answers.Builder): " + builder);
		Values result = values;
		if (this.needsInduction()) {
			Dialer dialer = new Dialer.Builder(problem.getConfig(), this, values).build();
			Map.Entry<Values, Collection<String>> entry = Answers.timeInduction(dialer);
			result = entry.getKey();
			for (String output : entry.getValue()) {
				Hypothesis hypothesis = Answers.timeDeduction(this, output);
				builder.put(entry.getKey(), new Answer.Builder(this).setHypothesis(hypothesis).build());
			}
		} else
			builder.put(new Values(), new Answer.Builder(this).build());
		return result;
	}

}
