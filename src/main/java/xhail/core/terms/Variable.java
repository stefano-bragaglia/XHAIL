/**
 * 
 */
package xhail.core.terms;

import xhail.core.Buildable;

/**
 * @author stefano
 *
 */
public class Variable implements Term {

	public static class Builder implements Buildable<Variable> {

		private String identifier;

		private Placemarker type = null;

		public Builder(String identifier) {
			if (null == identifier || (identifier = identifier.trim()).isEmpty()
					|| (identifier.charAt(0) != '_' && (identifier.charAt(0) < 'A' || identifier.charAt(0) > 'Z')))
				throw new IllegalArgumentException("Illegal 'identifier' argument in Variable.Builder(String): " + identifier);
			this.identifier = identifier;
		}

		@Override
		public Variable build() {
			return new Variable(this);
		}

		public Builder setContent(String identifier) {
			if (null == identifier || (identifier = identifier.trim()).isEmpty()
					|| (identifier.charAt(0) != '_' && (identifier.charAt(0) < 'A' || identifier.charAt(0) > 'Z')))
				throw new IllegalArgumentException("Illegal 'identifier' argument in Variable.Builder.setContent(String): " + identifier);
			this.identifier = identifier;
			return this;
		}

		public Builder setType(Placemarker type) {
			if (null == type)
				throw new IllegalArgumentException("Illegal 'type' argument in Variable.Builder.setType(Placemarker): " + type);
			this.type = type;
			return this;
		}

	}

	private final String identifier;

	private final Placemarker type;

	private Variable(Builder builder) {
		if (null == builder)
			throw new IllegalArgumentException("Illegal 'builder' argument in Variable(Variable.Builder): " + builder);
		this.identifier = builder.identifier;
		this.type = builder.type;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Variable other = (Variable) obj;
		if (identifier == null) {
			if (other.identifier != null)
				return false;
		} else if (!identifier.equals(other.identifier))
			return false;
		if (type == null) {
			if (other.type != null)
				return false;
		} else if (!type.equals(other.type))
			return false;
		return true;
	}

	// @Override
	// public Collection<Term> filters(final SchemeTerm term) {
	// if (null == term)
	// throw new
	// IllegalArgumentException("Illegal 'term' argument in Variable.filter(SchemeTerm): "
	// + term);
	// // Being a variable, it matches everything!!!
	// return Collections.emptySet();
	// }

	public final String getIdentifier() {
		return identifier;
	}

	public final Placemarker getType() {
		return type;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((identifier == null) ? 0 : identifier.hashCode());
		result = prime * result + ((type == null) ? 0 : type.hashCode());
		return result;
	}

//	@Override
//	public Collection<Term> matches(SchemeTerm term, Collection<Term> usables, Set<Atom> facts) {
//		if (null == term)
//			throw new IllegalArgumentException("Illegal 'term' argument in Variable.matches(SchemeTerm, Collection<Term>, Set<Atom>): " + term);
//		if (null == usables)
//			throw new IllegalArgumentException("Illegal 'usables' argument in Variable.matches(SchemeTerm, Collection<Term>, Set<Atom>): " + usables);
//		if (null == facts)
//			throw new IllegalArgumentException("Illegal 'facts' argument in Variable.matches(SchemeTerm, Collection<Term>, Set<Atom>): " + facts);
//		// We call matches from a ground atom, so it cannot reach this!!!
//		return null;
//	}

	@Override
	public String toString() {
		return identifier;
	}

}
