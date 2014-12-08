/**
 * 
 */
package xhail.core.statements;

import xhail.core.Buildable;
import xhail.core.terms.Atom;

/**
 * @author stefano
 *
 */
public class Example {

	public static class Builder implements Buildable<Example> {

		private Atom atom;

		private boolean negated = false;
		private int priority = 1;
		private Integer weight = null;

		/**
		 * Default constructor with mandatory fields.
		 * 
		 * @param predicate
		 *            the predicate of the object being built
		 */
		public Builder(Atom atom) {
			if (null == atom)
				throw new IllegalArgumentException("Illegal 'atom' argument in Penguins.Builder(Atom): " + atom);
			this.atom = atom;
		}

		/*
		 * (non-Javadoc)
		 * 
		 * @see xhail.core.Buildable#build()
		 */
		@Override
		public Example build() {
			return new Example(this);
		}

		/**
		 * Sets the predicate of the object being built (must be not-null and
		 * not-empty).
		 * 
		 * @param predicate
		 *            the predicate of the object being built
		 * @return the builder itself
		 */
		public Builder setAtom(Atom atom) {
			if (null == atom)
				throw new IllegalArgumentException("Illegal 'atom' argument in Penguins.Builder.setPredicate(Atom): " + atom);
			this.atom = atom;
			return this;
		}

		public Builder setNegated(boolean negated) {
			this.negated = negated;
			return this;
		}

		/**
		 * Sets the priority of the object being built.
		 * 
		 * @param priority
		 *            the priority of the object being built
		 * @return the builder itself
		 */
		public Builder setPriority(int priority) {
			this.priority = priority;
			return this;
		}

		/**
		 * Sets the weight of the object being built.
		 * 
		 * @param weight
		 *            the weight of the object being built
		 * @return the builder itself
		 */
		public Builder setWeight(Integer weight) {
			this.weight = weight;
			return this;
		}

	}

	public static final String KEYWORD = "#example";

	public static final String PRIORITY_OP = "@";

	public static final String WEIGHT_OP = "=";

	private final boolean defeasible;

	private final Atom atom;

	private final int priority;

	private final int weight;

	private final boolean negated;

	private Example(Builder builder) {
		if (null == builder)
			throw new IllegalArgumentException("Illegal 'builder' argument in Penguins(Penguins.Builder): " + builder);
		this.atom = builder.atom;
		this.defeasible = null != builder.weight;
		this.negated = builder.negated;
		this.priority = builder.priority;
		this.weight = null == builder.weight ? 1 : builder.weight;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Example other = (Example) obj;
		if (atom == null) {
			if (other.atom != null)
				return false;
		} else if (!atom.equals(other.atom))
			return false;
		if (defeasible != other.defeasible)
			return false;
		if (negated != other.negated)
			return false;
		if (priority != other.priority)
			return false;
		if (weight != other.weight)
			return false;
		return true;
	}

	public Atom getAtom() {
		return atom;
	}

	public int getPriority() {
		return priority;
	}

	public int getWeight() {
		return weight;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((atom == null) ? 0 : atom.hashCode());
		result = prime * result + (defeasible ? 1231 : 1237);
		result = prime * result + (negated ? 1231 : 1237);
		result = prime * result + priority;
		result = prime * result + weight;
		return result;
	}

	public boolean isDefeasible() {
		return defeasible;
	}

	public final String[] asClauses() {
		String yes = negated ? "not " : "";
		String not = negated ? "" : "not ";
//		String bool = negated ? "true" : "false";
		String[] result = new String[defeasible ? 2 : 3];
		result[0] = String.format("%% %s", toString());
		result[1] = String.format("#maximize[ %s%s =%d @%d ].", yes, atom, weight, priority);
		if (!defeasible)
			result[2] = String.format(":-%s%s.", not, atom);
//		result[result.length - 2] = String.format("covered_example(%s,%s):-%s%s.", bool, atom, yes, atom);
//		result[result.length - 1] = String.format("uncovered_example(%s,%s):-%s%s.", bool, atom, not, atom);
		return result;
	}

	public boolean isNegated() {
		return negated;
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see java.lang.Object#toString()
	 */
	@Override
	public String toString() {
		String result = KEYWORD;
		if (negated)
			result += " not";
		result += " " + atom;
		if (weight != 1)
			result += " " + WEIGHT_OP + weight;
		if (priority != 1)
			result += " " + PRIORITY_OP + priority;
		result += ".";
		return result;
	}

}
