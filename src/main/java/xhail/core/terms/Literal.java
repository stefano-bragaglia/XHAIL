/**
 * 
 */
package xhail.core.terms;

import xhail.core.Buildable;

/**
 * @author stefano
 *
 */
public class Literal implements Comparable<Literal> {

	public static class Builder implements Buildable<Literal> {

		private Atom atom;

		private int level = 0;

		private boolean negated = false;

		public Builder(Atom atom) {
			if (null == atom)
				throw new IllegalArgumentException("Illegal 'atom' argument in Literal.Builder(Atom): " + atom);
			this.atom = atom;
		}

		@Override
		public Literal build() {
			return new Literal(this);
		}

		public Builder setAtom(Atom atom) {
			if (null == atom)
				throw new IllegalArgumentException("Illegal 'atom' argument in Literal.Builder.setAtom(Atom): " + atom);
			this.atom = atom;
			return this;
		}

		public Builder setLevel(int level) {
			if (level < 0)
				throw new IllegalArgumentException("Illegal 'level' argument in Literal.Builder.setLevel(int): " + level);
			this.level = level;
			return this;
		}

		public Builder setNegated(boolean negated) {
			this.negated = negated;
			return this;
		}

	}

	private final Atom atom;

	private final int level;

	private final boolean negated;

	private Literal(Builder builder) {
		if (null == builder)
			throw new IllegalArgumentException("Illegal 'builder' argument in Literal(Literal.Builder): " + builder);
		this.atom = builder.atom;
		this.level = builder.level;
		this.negated = builder.negated;
	}

	@Override
	public int compareTo(Literal o) {
		int result = atom.compareTo(o.atom);
		if (0 == result)
			return Boolean.compare(o.negated, negated);
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Literal other = (Literal) obj;
		if (atom == null) {
			if (other.atom != null)
				return false;
		} else if (!atom.equals(other.atom))
			return false;
		if (level != other.level)
			return false;
		if (negated != other.negated)
			return false;
		return true;
	}

	public final Atom getAtom() {
		return atom;
	}

	public final int getLevel() {
		return level;
	}

	public final int getPriority() {
		return atom.getPriority();
	}

	public final SchemeTerm getScheme() {
		return atom.getScheme();
	}

	public final int getWeight() {
		return atom.getWeight();
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((atom == null) ? 0 : atom.hashCode());
		result = prime * result + level;
		result = prime * result + (negated ? 1231 : 1237);
		return result;
	}

	public final boolean isNegated() {
		return negated;
	}

	@Override
	public String toString() {
		return (negated ? "not " : "") + atom;
	}

	public final boolean hasVariables() {
		return atom.hasVariables();
	}

	public final Variable[] getVariables() {
		return atom.getVariables();
	}

	public final boolean hasTypes() {
		return atom.hasTypes();
	}

	public final String[] getTypes() {
		return atom.getTypes();
	}

}
