/**
 * 
 */
package xhail.core.statements;

import xhail.core.Buildable;
import xhail.core.terms.Scheme;

/**
 * @author stefano
 *
 */
public class ModeB {

	public static class Builder implements Buildable<ModeB> {

		private boolean negated = false;

		private int priority = 1;
		private Scheme scheme;
		private int upper = Integer.MAX_VALUE;
		private int weight = 1;

		public Builder(Scheme scheme) {
			if (null == scheme)
				throw new IllegalArgumentException("Illegal 'scheme' argument in ModeB.Builder(Scheme): " + scheme);
			this.scheme = scheme;
		}

		@Override
		public ModeB build() {
			return new ModeB(this);
		}

		public Builder setNegated(boolean negated) {
			this.negated = negated;
			return this;
		}

		public Builder setPriority(int priority) {
			this.priority = priority;
			return this;
		}

		public Builder setScheme(Scheme scheme) {
			if (null == scheme)
				throw new IllegalArgumentException("Illegal 'scheme' argument in ModeB.Builder.setScheme(Scheme): " + scheme);
			this.scheme = scheme;
			return this;
		}

		public Builder setUpper(int upper) {
			this.upper = upper;
			return this;
		}

		public Builder setWeight(Integer weight) {
			this.weight = null == weight ? 1 : weight;
			return this;
		}

	}

	public static final String CONSTRAINT_OP = ":";

	public static final String KEYWORD = "#modeb";

	public static final String PRIORITY_OP = "@";

	public static final String SEPARATOR_OP = "-";

	public static final String WEIGHT_OP = "=";

	private final boolean negated;

	private final int priority;

	private final Scheme scheme;

	private final int upper;

	private final int weight;

	private ModeB(Builder builder) {
		this.negated = builder.negated;
		this.priority = builder.priority;
		this.scheme = builder.scheme;
		this.upper = builder.upper;
		this.weight = builder.weight;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		ModeB other = (ModeB) obj;
		if (negated != other.negated)
			return false;
		if (priority != other.priority)
			return false;
		if (scheme == null) {
			if (other.scheme != null)
				return false;
		} else if (!scheme.equals(other.scheme))
			return false;
		if (upper != other.upper)
			return false;
		if (weight != other.weight)
			return false;
		return true;
	}

	public int getPriority() {
		return priority;
	}

	public Scheme getScheme() {
		return scheme;
	}

	public int getUpper() {
		return upper;
	}

	public int getWeigth() {
		return weight;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + (negated ? 1231 : 1237);
		result = prime * result + priority;
		result = prime * result + ((scheme == null) ? 0 : scheme.hashCode());
		result = prime * result + upper;
		result = prime * result + weight;
		return result;
	}

	public boolean isNegated() {
		return negated;
	}

	@Override
	public String toString() {
		String result = KEYWORD;
		if (negated)
			result += " not";
		result += " " + scheme.toString();
		if (upper != Integer.MAX_VALUE)
			result += " " + CONSTRAINT_OP + upper;
		if (weight != 1)
			result += " " + WEIGHT_OP + weight;
		if (priority != 1)
			result += " " + PRIORITY_OP + priority;
		result += ".";
		return result;
	}

	// public final String[] asClauses() {
	//
	//
	//
	//
	//
	//
	//
	//
	//
	//
	// Set<Variable> vars = new HashSet<>();
	// String atom = ((Atom) scheme.generalises(vars)).toString();
	// String types = scheme.getTypes().length > 0 ? " :" + String.join(" :",
	// scheme.getTypes()) : "";
	// String list = scheme.getTypes().length > 0 ? "," + String.join(",",
	// scheme.getTypes()) : "";
	// String[] result = new String[4];
	// result[0] = String.format("%% %s", toString());
	// result[1] = String.format("%d { abduced_%s%s } %d.", lower, atom, types,
	// upper);
	// result[2] = String.format("#minimize[ abduced_%s =%d @%d%s ].", atom,
	// weight, priority, types);
	// result[3] = String.format("%s:-abduced_%s%s.", atom, atom, list);
	// return result;
	// }

}
