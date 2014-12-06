/**
 * 
 */
package xhail.core.entities;

import java.util.Arrays;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.Map;
import java.util.Set;

import org.apache.commons.collections4.iterators.ArrayIterator;

import xhail.core.Buildable;
import xhail.core.Config;
import xhail.core.parser.Parser;
import xhail.core.statements.Display;
import xhail.core.statements.Example;
import xhail.core.statements.ModeB;
import xhail.core.statements.ModeH;
import xhail.core.terms.Atom;
import xhail.core.terms.Clause;
import xhail.core.terms.Literal;
import xhail.core.terms.Number;
import xhail.core.terms.Variable;

/**
 * @author stefano
 *
 */
public class Hypothesis implements Iterable<Atom> {

	public static class Builder implements Buildable<Hypothesis> {

		private Set<Literal> covered = new HashSet<>();
		private Set<Atom> facts = new HashSet<>();
		private Grounding grounding;
		private Set<Atom> literals = new HashSet<>();
		private Set<Atom> model = new HashSet<>();

		private Set<Literal> uncovered = new HashSet<>();

		public Builder(Grounding grounding) {
			if (null == grounding)
				throw new IllegalArgumentException("Illegal 'grounding' argument in Hypothesis.Builder(Grounding): " + grounding);
			this.grounding = grounding;
		}

		public Builder addAtom(Atom atom) {
			if (null == atom)
				throw new IllegalArgumentException("Illegal 'atom' argument in Hypothesis.Builder.addAtom(Atom): " + atom);
			if (atom.getIdentifier().equals("use_clause_literal") && 2 == atom.getArity()) {
				literals.add(atom);
			} else {
				if (grounding.getConfig().isFull() && grounding.hasDisplays() && grounding.lookup(atom))
					model.add(atom);
				facts.add(atom);
			}
			return this;
		}

		public Builder addAtoms(Collection<Atom> atoms) {
			if (null == atoms)
				throw new IllegalArgumentException("Illegal 'indAtoms' argument in Hypothesis.Builder.addAtoms(Collection<Atom>): " + atoms);
			for (Atom atom : atoms)
				addAtom(atom);
			return this;
		}

		@Override
		public Hypothesis build() {
			covered.clear();
			uncovered.clear();
			for (Example example : grounding.getExamples()) {
				Atom atom = example.getAtom();
				if (example.isNegated() != facts.contains(atom))
					covered.add(new Literal.Builder(atom).setNegated(example.isNegated()).build());
				else
					uncovered.add(new Literal.Builder(atom).setNegated(example.isNegated()).build());
			}
			return new Hypothesis(this);
		}

		public Builder clear() {
			this.model.clear();
			this.covered.clear();
			this.literals.clear();
			return this;
		}

		public Builder parse(Collection<String> answer) {
			if (null == answer)
				throw new IllegalArgumentException("Illegal 'answer' argument in Hypothesis.Builder.parse(Collection<String>): " + answer);
			for (String atom : answer)
				addAtom(Parser.parseToken(atom));
			return this;
		}

		public Builder removeAtom(Atom atom) {
			if (null == atom)
				throw new IllegalArgumentException("Illegal 'atom' argument in Hypothesis.Builder.removeAtom(Atom): " + atom);
			if (atom.getIdentifier().equals("use_clause_literal") && 2 == atom.getArity()) {
				literals.remove(atom);
			} else {
				if (grounding.getConfig().isFull() && grounding.hasDisplays() && grounding.lookup(atom))
					model.remove(atom);
				facts.remove(atom);
			}
			return this;
		}

		public Builder removeAtoms(Collection<Atom> atoms) {
			if (null == atoms)
				throw new IllegalArgumentException("Illegal 'indAtoms' argument in Hypothesis.Builder.removeAtoms(Collection<Atom>): " + atoms);
			for (Atom atom : atoms)
				removeAtom(atom);
			return this;
		}

	}

	private final Literal[] covered;

	private final Grounding grounding;

	private Clause[] hypotheses;

	private final Atom[] literals;

	private final Atom[] model;

	private final Literal[] uncovered;

	private Hypothesis(Builder builder) {
		if (null == builder)
			throw new IllegalArgumentException("Illegal 'builder' argument in Hypothesis(Hypothesis.Builder): " + builder);
		this.covered = builder.covered.toArray(new Literal[builder.covered.size()]);
		this.grounding = builder.grounding;
		this.literals = builder.literals.toArray(new Atom[builder.literals.size()]);
		this.model = builder.model.toArray(new Atom[builder.model.size()]);
		this.uncovered = builder.uncovered.toArray(new Literal[builder.uncovered.size()]);
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Hypothesis other = (Hypothesis) obj;
		if (!Arrays.equals(hypotheses, other.hypotheses))
			return false;
		if (!Arrays.equals(covered, other.covered))
			return false;
		if (grounding == null) {
			if (other.grounding != null)
				return false;
		} else if (!grounding.equals(other.grounding))
			return false;
		if (!Arrays.equals(literals, other.literals))
			return false;
		if (!Arrays.equals(model, other.model))
			return false;
		if (!Arrays.equals(uncovered, other.uncovered))
			return false;
		return true;
	}

	public final String[] getBackground() {
		return grounding.getBackground();
	}

	public final Config getConfig() {
		return grounding.getConfig();
	}

	public final Literal[] getCovered() {
		return covered;
	}

	public final Atom[] getDelta() {
		return grounding.getDelta();
	}

	public final Display[] getDisplays() {
		return grounding.getDisplays();
	}

	public final String[] getDomains() {
		return grounding.getDomains();
	}

	public final Example[] getExamples() {
		return grounding.getExamples();
	}

	public final Clause[] getGeneralisation() {
		return grounding.getGeneralisation();
	}

	public Grounding getGrounding() {
		return grounding;
	}

	public final Clause[] getHypotheses() {
		if (null == hypotheses) {
			Set<Clause> set = new HashSet<>();
			Clause[] generalisation = grounding.getGeneralisation();
			Map<Integer, Clause.Builder> builders = new HashMap<>();
			Map<Integer, Set<Literal>> types = new HashMap<>();
			for (Atom atom : literals) {
				int clauseId = ((Number) atom.getTerm(0)).getValue();
				int literalId = ((Number) atom.getTerm(1)).getValue();
				if (0 == literalId && 0 <= clauseId && clauseId < generalisation.length) {
					builders.put(clauseId, new Clause.Builder().setHead(generalisation[clauseId].getHead()));
					types.put(clauseId, new LinkedHashSet<>());
				}
			}
			for (Atom atom : literals) {
				int clauseId = ((Number) atom.getTerm(0)).getValue();
				int literalId = ((Number) atom.getTerm(1)).getValue();
				if (literalId > 0 && 0 <= clauseId && clauseId < generalisation.length) {

					Literal literal = generalisation[clauseId].getBody(literalId);
					builders.get(clauseId).addLiteral(literal);
					Set<Literal> literals = types.get(clauseId);
					for (Variable variable : literal.getVariables())
						literals.add(new Literal.Builder( //
								new Atom.Builder(variable.getType().getIdentifier()).addTerm(variable).build() //
						).build());
				}
			}
			for (int c : builders.keySet()) {
				Clause.Builder builder = builders.get(c);
				for (Literal literal : types.get(c))
					builder.addLiteral(literal);
				set.add(builder.build());
			}
			hypotheses = set.toArray(new Clause[set.size()]);
		}
		return hypotheses;
	}

	public final Clause[] getKernel() {
		return grounding.getKernel();
	}

	public final ModeB[] getModeBs() {
		return grounding.getModeBs();
	}

	public final ModeH[] getModeHs() {
		return grounding.getModeHs();
	}

	public final Atom[] getModel() {
		return model;
	}

	public final Problem getProblem() {
		return grounding.getProblem();
	}

	public final Literal[] getUncovered() {
		return uncovered;
	}

	public final boolean hasBackground() {
		return grounding.hasBackground();
	}

	public final boolean hasCovered() {
		return covered.length > 0;
	}

	public final boolean hasDelta() {
		return grounding.hasDelta();
	}

	public final boolean hasDisplays() {
		return grounding.hasDisplays();
	}

	public final boolean hasDomains() {
		return grounding.getDomains().length > 0;
	}

	public final boolean hasExamples() {
		return grounding.hasExamples();
	}

	public final boolean hasGeneralisation() {
		return grounding.hasGeneralisation();
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + Arrays.hashCode(hypotheses);
		result = prime * result + Arrays.hashCode(covered);
		result = prime * result + ((grounding == null) ? 0 : grounding.hashCode());
		result = prime * result + Arrays.hashCode(literals);
		result = prime * result + Arrays.hashCode(model);
		result = prime * result + Arrays.hashCode(uncovered);
		return result;
	}

	public final boolean hasHypotheses() {
		return getHypotheses().length > 0;
	}

	public final boolean hasKernel() {
		return grounding.hasKernel();
	}

	public final boolean hasModel() {
		return model.length > 0;
	}

	public final boolean hasModes() {
		return grounding.hasModes();
	}

	public final boolean hasUncovered() {
		return uncovered.length > 0;
	}

	@Override
	public Iterator<Atom> iterator() {
		return new ArrayIterator<>(literals);
	}

	@Override
	public String toString() {
		return "Hypothesis [\n  hypotheses=" + Arrays.toString(hypotheses) + ",\n  covered=" + Arrays.toString(covered) + ",\n  grounding=" + grounding
				+ ",\n  literals=" + Arrays.toString(literals) + ",\n  model=" + Arrays.toString(model) + ",\n  uncovered=" + Arrays.toString(uncovered)
				+ "\n]";
	}

}
