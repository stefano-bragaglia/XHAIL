/**
 * 
 */
package xhail.core.entities;

import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.Map;
import java.util.Set;

import org.apache.commons.collections4.iterators.ArrayIterator;

import xhail.core.Buildable;
import xhail.core.statements.Display;
import xhail.core.terms.Atom;
import xhail.core.terms.Clause;
import xhail.core.terms.Literal;
import xhail.core.terms.Number;
import xhail.core.terms.Term;
import xhail.core.terms.Variable;

/**
 * @author stefano
 *
 */
public class Hypothesis implements Iterable<Atom> {

	public static class Builder implements Buildable<Hypothesis> {

		private Set<Literal> cover = new HashSet<>();
		private Grounding grounding;
		private Set<Atom> literals = new HashSet<>();

		private Set<Atom> model = new HashSet<>();

		public Builder(Grounding grounding) {
			if (null == grounding)
				throw new IllegalArgumentException("Illegal 'grounding' argument in Hypothesis.Builder(Grounding): " + grounding);
			this.grounding = grounding;
		}

		public Builder addAtom(Atom atom) {
			if (null == atom)
				throw new IllegalArgumentException("Illegal 'atom' argument in Hypothesis.Builder.addAtom(Atom): " + atom);
			if (atom.getIdentifier().startsWith("uncovered_example") && 2 == atom.getArity()) {
				Term term = atom.getTerm(0);
				if (term instanceof Atom) {
					boolean negated = ((Atom) term).getIdentifier().equals("true");
					cover.add(new Literal.Builder((Atom) atom.getTerm(1)).setNegated(negated).build());
				}
			} else if (atom.getIdentifier().startsWith("display_fact") && 1 == atom.getArity())
				model.add((Atom) atom.getTerm(0));
			else
				literals.add(atom);
			return this;
		}

		@Override
		public Hypothesis build() {
			return new Hypothesis(this);
		}

		public Builder clearAtom() {
			this.model.clear();
			this.cover.clear();
			this.literals.clear();
			return this;
		}

		public Builder removeAtom(Atom atom) {
			if (null == atom)
				throw new IllegalArgumentException("Illegal 'atom' argument in Hypothesis.Builder.removeAtom(Atom): " + atom);
			if (atom.getIdentifier().startsWith("covered_example") && 2 == atom.getArity()) {
				Term term = atom.getTerm(0);
				if (term instanceof Atom) {
					boolean negated = ((Atom) term).getIdentifier().equals("true");
					cover.remove(new Literal.Builder((Atom) atom.getTerm(1)).setNegated(negated).build());
				}
			} else if (atom.getIdentifier().startsWith("display_fact") && 1 == atom.getArity())
				model.remove((Atom) atom.getTerm(0));
			else
				literals.remove((Atom) atom);
			return this;
		}

		public Builder addAtoms(Collection<Atom> atoms) {
			if (null == atoms)
				throw new IllegalArgumentException("Illegal 'indAtoms' argument in Hypothesis.Builder.addAtoms(Collection<Atom>): " + atoms);
			for (Atom atom : atoms)
				addAtom(atom);
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

	private Set<Clause> clauses;

	private final Set<Literal> cover;

	private final Grounding grounding;

	private final Set<Atom> literals;

	private final Set<Atom> model;

	private Hypothesis(Builder builder) {
		if (null == builder)
			throw new IllegalArgumentException("Illegal 'builder' argument in Hypothesis(Hypothesis.Builder): " + builder);
		this.cover = new HashSet<>(builder.cover);
		this.grounding = builder.grounding;
		this.literals = new HashSet<>(builder.literals);
		this.model = new HashSet<>(builder.model);
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
		if (literals == null) {
			if (other.literals != null)
				return false;
		} else if (!literals.equals(other.literals))
			return false;
		if (model == null) {
			if (other.model != null)
				return false;
		} else if (!model.equals(other.model))
			return false;
		return true;
	}

	// @Override
	// public int compareTo(Hypothesis o) {
	// int result = coverage.length - o.examples.length;
	// if (0 == result)
	// result = explains().size() - o.explains().size();
	// if (0 == result)
	// result = literals.length - o.literals.length;
	// return result;
	// }

	public Collection<Clause> explains() {
		if (null == clauses) {
			clauses = new HashSet<>();
			Clause[] library = grounding.getGeneralisation().toArray(new Clause[grounding.getGeneralisation().size()]);
			Map<Integer, Clause.Builder> builders = new HashMap<>();
			Map<Integer, Set<Literal>> types = new HashMap<>();
			for (Atom atom : literals) {
				int c = ((Number) atom.getTerm(0)).getValue();
				int l = ((Number) atom.getTerm(1)).getValue();
				if (0 == l && 0 <= c && c < library.length) {
					builders.put(c, new Clause.Builder().setHead(library[c].getHead()));
					types.put(c, new LinkedHashSet<>());
				}
			}
			for (Atom atom : literals) {
				int c = ((Number) atom.getTerm(0)).getValue();
				int l = ((Number) atom.getTerm(1)).getValue();
				if (l > 0 && 0 <= c && c < library.length) {
					Literal literal = library[c].getBody(l);
					builders.get(c).addLiteral(literal);
					Set<Literal> set = types.get(c);
					for (Variable variable : literal.getVariables())
						set.add(new Literal.Builder( //
								new Atom.Builder(variable.getType().getIdentifier()).addTerm(variable).build() //
						).build());
				}
			}
			for (int c : builders.keySet()) {
				Clause.Builder builder = builders.get(c);
				for (Literal literal : types.get(c))
					builder.addLiteral(literal);
				Clause clause = builder.build();
				if (clause.getSize() > 0)
					clauses.add(clause);
			}
		}
		return clauses;
	}

	public final Collection<Literal> getCover() {
		return cover;
	}

	public final Collection<Display> getDisplays() {
		return grounding.getDisplays();
	}

	public Grounding getGrounding() {
		return grounding;
	}

	public final Collection<Atom> getLiterals() {
		return literals;
	}

	public final Collection<Atom> getModel() {
		return model;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((literals == null) ? 0 : literals.hashCode());
		result = prime * result + ((model == null) ? 0 : model.hashCode());
		return result;
	}

	@Override
	public Iterator<Atom> iterator() {
		return new ArrayIterator<>(literals);
	}

	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("Hypothesis:\n");
		for (Clause clause : explains())
			builder.append("  " + clause + "\n");
		return builder.toString();
	}

}
