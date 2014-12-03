/**
 * 
 */
package xhail.core.statements;

import xhail.core.Buildable;

/**
 * @author stefano
 *
 */
public class Display implements Comparable<Display> {

	public static class Builder implements Buildable<Display> {

		private int arity = 1;
		private String identifier;

		public Builder(String identifier) {
			if (null == identifier || (identifier = identifier.trim()).isEmpty() || identifier.charAt(0) < 'a' || identifier.charAt(0) > 'z')
				throw new IllegalArgumentException("Illegal 'identifier' argument in Display.Builder(String): " + identifier);
			this.identifier = identifier;
		}

		@Override
		public Display build() {
			return new Display(this);
		}

		public Builder setArity(int arity) {
			if (arity < 0)
				throw new IllegalArgumentException("Illegal 'arity' argument in Display.Builder.setArity(int): " + arity);
			this.arity = arity;
			return this;
		}

		public Builder setIdentifier(String identifier) {
			if (null == identifier || (identifier = identifier.trim()).isEmpty() || identifier.charAt(0) < 'a' || identifier.charAt(0) > 'z')
				throw new IllegalArgumentException("Illegal 'identifier' argument in Display.Builder.setIdentifier(String): " + identifier);
			this.identifier = identifier;
			return this;
		}

	}

	public static final String KEYWORD = "#display";

	private final int arity;

	private final String identifier;

	private Display(Builder builder) {
		if (null == builder)
			throw new IllegalArgumentException("Illegal 'builder' argument in Display(Display.Builder): " + builder);
		this.arity = builder.arity;
		this.identifier = builder.identifier;
	}

	public String asClauses() {
		String result = "";
		for (int i = 1; i <= arity; i++) {
			if (i > 1)
				result += ",";
			result += "V" + i;
		}
		if (!result.isEmpty())
			result = "(" + result + ")";
		result = identifier + result;

		return String.format("display_fact(%s):-%s.", result, result);
	}

	@Override
	public int compareTo(Display o) {
		int result = identifier.compareTo(o.identifier);
		if (0 == result)
			result = o.arity - arity;
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
		Display other = (Display) obj;
		if (arity != other.arity)
			return false;
		if (identifier == null) {
			if (other.identifier != null)
				return false;
		} else if (!identifier.equals(other.identifier))
			return false;
		return true;
	}

	public final int getArity() {
		return arity;
	}

	public final String getIdentifier() {
		return identifier;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + arity;
		result = prime * result + ((identifier == null) ? 0 : identifier.hashCode());
		return result;
	}

	@Override
	public String toString() {
		return String.format("%s %s/%d.", KEYWORD, identifier, arity);
	}

}
