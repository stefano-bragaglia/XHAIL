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
public class Number implements Term, SchemeTerm {

	public static class Builder implements Buildable<Number> {

		private int value;

		public Builder(int value) {
			this.value = value;
		}

		@Override
		public Number build() {
			return new Number(this);
		}

		public Builder setValue(int value) {
			this.value = value;
			return this;
		}

	}

	private final int value;

	private Number(Builder builder) {
		if (null == builder)
			throw new IllegalArgumentException("Illegal 'builder' argument in Number(Number.Builder): " + builder);
		this.value = builder.value;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Number other = (Number) obj;
		if (value != other.value)
			return false;
		return true;
	}

	@Override
	public Term generalises(Set<Variable> set) {
		if (null == set)
			throw new IllegalArgumentException("Illegal 'term' argument in Number.generalises(Set<Variable>): " + set);
		return this;
	}

	@Override
	public Term generalises(Term term, Map<Term, Variable> map) {
		if (null == term)
			throw new IllegalArgumentException("Illegal 'term' argument in Number.generalises(Term, Map<Term, Variable>): " + term);
		if (null == map)
			throw new IllegalArgumentException("Illegal 'map' argument in Number.generalises(Term, Map<Term, Variable>): " + map);
		if (term instanceof Number) {
			Number other = (Number) term;
			if (other.getValue() == value)
				return this;
			else
				return null;
		} else
			return null;
	}

	public final int getValue() {
		return value;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + value;
		return result;
	}

//	@Override
//	public Collection<Term> matches(SchemeTerm term, Collection<Term> usables, Set<Atom> facts) {
//		if (null == term)
//			throw new IllegalArgumentException("Illegal 'term' argument in Number.matches(SchemeTerm, Collection<Term>, Set<Atom>): " + term);
//		if (null == usables)
//			throw new IllegalArgumentException("Illegal 'usables' argument in Number.matches(SchemeTerm, Collection<Term>, Set<Atom>): " + usables);
//		if (null == facts)
//			throw new IllegalArgumentException("Illegal 'facts' argument in Number.matches(SchemeTerm, Collection<Term>, Set<Atom>): " + facts);
//		if (term instanceof Number) {
//			Number other = (Number) term;
//			if (value == other.getValue())
//				return Collections.emptySet();
//			else
//				return null;
//		} else
//			return null;
//	}
//
//	@Override
//	public Map<Term, Collection<Atom>> matching(Set<Term> usables, Map<SchemeTerm, Set<Atom>> parts) {
//		return Collections.singletonMap(this, Collections.emptySet());
//	}

	@Override
	public String toString() {
		return "" + value;
	}

}
