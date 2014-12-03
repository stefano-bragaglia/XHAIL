/**
 * 
 */
package xhail.core.terms;

import java.util.Map;
import java.util.Set;

import xhail.core.Buildable;

/**
 * @author stefano
 *
 */
public class Placemarker implements SchemeTerm {

	public static class Builder implements Buildable<Placemarker> {

		private String identifier;

		private Type type = Type.CONSTANT;

		public Builder(String identifier) {
			if (null == identifier || (identifier = identifier.trim()).isEmpty() || identifier.charAt(0) < 'a' || identifier.charAt(0) > 'z')
				throw new IllegalArgumentException("Illegal 'identifier' argument in Placemarker.Builder(String): " + identifier);
			this.identifier = identifier;
		}

		@Override
		public Placemarker build() {
			return new Placemarker(this);
		}

		public Builder setIdentifier(String identifier) {
			if (null == identifier || (identifier = identifier.trim()).isEmpty() || identifier.charAt(0) < 'a' || identifier.charAt(0) > 'z')
				throw new IllegalArgumentException("Illegal 'identifier' argument in Placemarker.Builder.setIdentifier(String): " + identifier);
			this.identifier = identifier;
			return this;
		}

		public Builder setType(Type type) {
			if (null == type)
				throw new IllegalArgumentException("Illegal 'type' argument in Placemarker.Builder.setType(Type): " + type);
			this.type = type;
			return this;
		}

	}

	public static enum Type {

		CONSTANT("$", CONSTANT_STRING), INPUT("+", INPUT_STRING), OUTPUT("-", OUTPUT_STRING);

		private final String internal;

		private final String symbol;

		private Type(String symbol, String internal) {
			this.internal = internal;
			this.symbol = symbol;
		}

		public final String getInternal() {
			return internal;
		}

		@Override
		public String toString() {
			return symbol;
		}

	}

	public static final String CONSTANT_STRING = "internal_const_par";

	public static final String INPUT_STRING = "internal_input_par";

	public static final String OUTPUT_STRING = "internal_output_par";

	private final String identifier;

	private final Type type;

	private Placemarker(Builder builder) {
		if (null == builder)
			throw new IllegalArgumentException("Illegal 'builder' argument in Placemarker(Placemarker.Builder): " + builder);
		this.identifier = builder.identifier;
		this.type = builder.type;
	}

	public final SchemeTerm decode() {
		SchemeTerm term = new Scheme.Builder(identifier).build();
		return new Scheme.Builder(type.getInternal()).addTerm(term).build();
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Placemarker other = (Placemarker) obj;
		if (identifier == null) {
			if (other.identifier != null)
				return false;
		} else if (!identifier.equals(other.identifier))
			return false;
		if (type != other.type)
			return false;
		return true;
	}

	@Override
	public Term generalises(Set<Variable> set) {
		if (null == set)
			throw new IllegalArgumentException("Illegal 'set' argument in Placemarker.generalises(Set<Variable>): " + set);
		Variable var = new Variable.Builder("V" + (1 + set.size())).setType(this).build();
		set.add(var);
		return var;
	}

	@Override
	public Term generalises(Term term, Map<Term, Variable> map) {
		if (null == term)
			throw new IllegalArgumentException("Illegal 'term' argument in Placemarker.generalises(Term, Map<Term, Variable>): " + term);
		if (null == map)
			throw new IllegalArgumentException("Illegal 'map' argument in Placemarker.generalises(Term, Map<Term, Variable>): " + map);
		if (Type.INPUT == type || Type.OUTPUT == type) {
			Variable var = map.get(term);
			if (null == var) {
				var = new Variable.Builder("V" + (1 + map.size())).setType(this).build();
				map.put(term, var);
			}
			return var;
		} else
			return term;
	}

	public final String getIdentifier() {
		return identifier;
	}

	public final Type getType() {
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
//	public Map<Term, Collection<Atom>> matching(Set<Term> usables, Map<SchemeTerm, Set<Atom>> parts) {
//		if (Type.INPUT == type) {
//			Map<Term, Collection<Atom>> result = new HashMap<>();
//			for (Term term : usables)
//				result.put(term, Collections.emptySet());
//			return result;
//		} else if (Type.OUTPUT == type) {
//			Set<Atom> next = new HashSet<>();
//			for (Atom term : parts.get(this))
//				next.add((Atom) term.getTerm(0));
//			Map<Term, Collection<Atom>> result = new HashMap<>();
//			for (Atom term : parts.get(this))
//				result.put(term, next);
//			return result;
//		} else if (Type.CONSTANT == type) {
//			Map<Term, Collection<Atom>> result = new HashMap<>();
//			for (Term term : parts.get(this))
//				result.put(term, Collections.emptySet());
//			return result;
//		} else
//			return null;
//	}

	@Override
	public String toString() {
		return "" + type + identifier;
	}

}
