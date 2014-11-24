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
public class ModeH {

	public static class Builder implements Buildable<ModeH> {

		private int lower = 0;
		private int priority = 1;
		private int upper = Integer.MAX_VALUE;
		private int weight = 1;

		private Scheme scheme;

		public Builder(Scheme scheme) {
			if (null == scheme)
				throw new IllegalArgumentException("Illegal 'scheme' argument in ModeH.Builder(Scheme): " + scheme);
			this.scheme = scheme;
		}

		@Override
		public ModeH build() {
			return new ModeH(this);
		}

		public Builder setLower(int lower) {
			this.lower = lower;
			return this;
		}

		public Builder setPriority(int priority) {
			this.priority = priority;
			return this;
		}

		public Builder setScheme(Scheme scheme) {
			if (null == scheme)
				throw new IllegalArgumentException("Illegal 'scheme' argument in ModeH.Builder.setScheme(Scheme): " + scheme);
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

	public static final String KEYWORD = "#modeh";

	public static final String PRIORITY_OP = "@";

	public static final String SEPARATOR_OP = "-";

	public static final String WEIGHT_OP = "=";

	private final int lower;

	private final int priority;

	private final Scheme scheme;

	private final int upper;

	private final int weight;

	private ModeH(Builder builder) {
		this.lower = builder.lower;
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
		ModeH other = (ModeH) obj;
		if (lower != other.lower)
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

	public Scheme getScheme() {
		return scheme;
	}

	public int getLower() {
		return lower;
	}

	public int getPriority() {
		return priority;
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
		result = prime * result + lower;
		result = prime * result + priority;
		result = prime * result + ((scheme == null) ? 0 : scheme.hashCode());
		result = prime * result + upper;
		result = prime * result + weight;
		return result;
	}

	@Override
	public String toString() {
		String result = KEYWORD;
		result += " " + scheme.toString();
		if (lower != 0 || upper != Integer.MAX_VALUE)
			result += " " + CONSTRAINT_OP + lower + SEPARATOR_OP + upper;
		if (weight != 1)
			result += " " + WEIGHT_OP + weight;
		if (priority != 1)
			result += " " + PRIORITY_OP + priority;
		result += ".";
		return result;
	}

}
