/**
 * 
 */
package xhail.core.terms;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

import org.apache.commons.collections4.iterators.ArrayIterator;
import org.apache.commons.lang3.StringUtils;

import xhail.core.Buildable;

/**
 * @author stefano
 *
 */
public class Scheme implements SchemeTerm, Iterable<Scheme> {

	public static class Builder implements Buildable<Scheme> {

		private String identifier;

		private boolean negated = false;

		private List<SchemeTerm> terms = new ArrayList<>();

		public Builder(String identifier) {
			if (null == identifier || (identifier = identifier.trim()).isEmpty() || identifier.charAt(0) < 'a' || identifier.charAt(0) > 'z')
				throw new IllegalArgumentException("Illegal 'identifier' argument in Scheme.Builder(String): " + identifier);
			this.identifier = identifier;
		}

		public Builder addTerm(SchemeTerm term) {
			if (null == term)
				throw new IllegalArgumentException("Illegal 'term' argument in Scheme.Builder.addTerm(SchemeTerm): " + term);
			this.terms.add(term);
			return this;
		}

		public Builder addTerms(Collection<SchemeTerm> terms) {
			if (null == terms)
				throw new IllegalArgumentException("Illegal 'terms' argument in Scheme.Builder.addTerms(Collection<SchemeTerm>): " + terms);
			this.terms.addAll(terms);
			return this;
		}

		@Override
		public Scheme build() {
			return new Scheme(this);
		}

		public Builder clearTerms() {
			this.terms.clear();
			return this;
		}

		public Builder removeTerm(SchemeTerm term) {
			if (null == term)
				throw new IllegalArgumentException("Illegal 'term' argument in Scheme.Builder.removeTerm(SchemeTerm): " + term);
			this.terms.remove(term);
			return this;
		}

		public Builder removeTerms(Collection<SchemeTerm> terms) {
			if (null == terms)
				throw new IllegalArgumentException("Illegal 'terms' argument in Scheme.Builder.removeTerms(Collection<SchemeTerm>): " + terms);
			this.terms.removeAll(terms);
			return this;
		}

		public Builder setIdentifier(String identifier) {
			if (null == identifier || (identifier = identifier.trim()).isEmpty() || identifier.charAt(0) < 'a' || identifier.charAt(0) > 'z')
				throw new IllegalArgumentException("Illegal 'identifier' argument in Scheme.Builder.setIdentifier(String): " + identifier);
			this.identifier = identifier;
			return this;
		}

		public Builder setNegated(boolean negated) {
			this.negated = negated;
			return this;
		}

	}

	private final String identifier;

	private final boolean negated;

	private final SchemeTerm[] terms;

	private Scheme(Builder builder) {
		if (null == builder)
			throw new IllegalArgumentException("Illegal 'builder' argument in Scheme(Scheme.Builder): " + builder);
		this.identifier = builder.identifier;
		this.negated = builder.negated;
		this.terms = builder.terms.toArray(new SchemeTerm[builder.terms.size()]);
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Scheme other = (Scheme) obj;
		if (identifier == null) {
			if (other.identifier != null)
				return false;
		} else if (!identifier.equals(other.identifier))
			return false;
		if (negated != other.negated)
			return false;
		if (!Arrays.equals(terms, other.terms))
			return false;
		return true;
	}

	@Override
	public Term generalises(Set<Variable> set) {
		if (null == set)
			throw new IllegalArgumentException("Illegal 'set' argument in Scheme.generalises(Set<Variable>): " + set);
		Atom.Builder builder = new Atom.Builder(identifier).setScheme(this);
		for (int i = 0; i < terms.length; i++) {
			Term nested = terms[i].generalises(set);
			if (null == nested)
				return null;
			builder.addTerm(nested);
		}
		return builder.build();
	}

	@Override
	public Term generalises(Term term, Map<Term, Variable> map) {
		if (null == term)
			throw new IllegalArgumentException("Illegal 'term' argument in Scheme.generalises(Term, Map<Term, Variable>): " + term);
		if (null == map)
			throw new IllegalArgumentException("Illegal 'map' argument in Scheme.generalises(Term, Map<Term, Variable>): " + map);
		if (term instanceof Atom) {
			Atom other = (Atom) term;
			if (other.getIdentifier().equals(identifier) && other.getArity() == terms.length) {
				Atom.Builder builder = new Atom.Builder(other).clearTerms();
				for (int i = 0; i < terms.length; i++) {
					Term nested = terms[i].generalises(other.getTerm(i), map);
					if (null == nested)
						return null;
					builder.addTerm(nested);
				}
				return builder.build();
			} else
				return null;
		} else
			return null;
	}

	public final int getArity() {
		return terms.length;
	}

	public final String getIdentifier() {
		return identifier;
	}

	public final SchemeTerm getTerm(int index) {
		if (index < 0 || index >= terms.length)
			throw new IndexOutOfBoundsException("Illegal 'index' argument in Scheme.getTerm(int): " + index);
		return terms[index];
	}

	public final SchemeTerm[] getTerms() {
		return terms;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((identifier == null) ? 0 : identifier.hashCode());
		result = prime * result + (negated ? 1231 : 1237);
		result = prime * result + Arrays.hashCode(terms);
		return result;
	}

	public final boolean isNegated() {
		return negated;
	}

	public boolean isPlacemarker() {
		return (Placemarker.CONSTANT_STRING.equals(identifier) || Placemarker.INPUT_STRING.equals(identifier) || Placemarker.OUTPUT_STRING.equals(identifier))
				&& (1 == terms.length || 2 == terms.length);
	}

	@Override
	public Iterator<Scheme> iterator() {
		return new ArrayIterator<>(terms);
	}

//	@Override
//	public Map<Term, Collection<Atom>> matching(Set<Term> usables, Map<SchemeTerm, Set<Atom>> parts) {
//		Map<Atom.Builder, Set<Term>> builders = new HashMap<>();
//		builders.put(new Atom.Builder(identifier), new HashSet<>());
//		for (int i = 0; i < terms.length; i++) {
//			Map<Term, Collection<Atom>> nested = terms[i].matching(usables, parts);
//			if (null == nested)
//				return null;
//			Map<Atom.Builder, Set<Term>> step = new HashMap<>();
//			for (Term term : nested.keySet()) {
//				for (Atom.Builder builder : builders.keySet()) {
//					Atom.Builder key = builder.clone().addTerm(term);
//					Set<Term> value = new HashSet<>(builders.get(builder));
//					value.addAll(nested.get(term));
//					step.put(key, value);
//				}
//			}
//			builders = step;
//		}
//		Map<Term, Collection<Atom>> result = new HashMap<>();
//		for (Atom.Builder builder : builders.keySet())
//			result.put(builder.build(), builders.get(builder));
//		return result;
//	}

	@Override
	public String toString() {
		String result = "";
		if (negated)
			result += "not ";
		result += identifier;
		if (terms.length > 0)
			result += "(" + StringUtils.join(terms, ",") + ")";
		return result;
	}

	// getTypes

	// getTypesWithoutConstantPlaceMarkers

	// getPlacemarkers

	// getPlacemarkersWithoutConstantPlacemarkers

	// getVariables

	// getVariablesWithoutConstantPlacemarkers

	private final void getPlacemarkers(Set<Placemarker> result) {
		if (null == result)
			throw new IllegalArgumentException("Illegal 'result' argument in Scheme.getPlacemarkers(Set<Placemarker>): " + result);
		for (SchemeTerm term : terms)
			if (term instanceof Placemarker)
				result.add((Placemarker) term);
			else if (term instanceof Scheme)
				((Scheme) term).getPlacemarkers(result);
	}

	private Placemarker[] placemarkers;

	public final boolean hasPlacemarkers() {
		return getPlacemarkers().length > 0;
	}

	public final Placemarker[] getPlacemarkers() {
		if (null == placemarkers) {
			Set<Placemarker> result = new LinkedHashSet<>();
			getPlacemarkers(result);
			placemarkers = result.toArray(new Placemarker[result.size()]);
		}
		return placemarkers;
	}

	public final boolean hasTypes() {
		return getPlacemarkers().length > 0;
	}

	public final String[] getTypes() {
		int length = getPlacemarkers().length;
		String[] result = new String[length];
		for (int i = 0; i < length; i++)
			result[i] = String.format("%s(V%d)", placemarkers[i].getIdentifier(), 1 + i);
		return result;
	}

	public final String[] getVariables() {
		int length = getPlacemarkers().length;
		String[] result = new String[length];
		for (int i = 0; i < length; i++)
			result[i] = String.format("V%d", 1 + i);
		return result;
	}

	public final boolean matches(Term candidate) {
		if (null == candidate)
			throw new IllegalArgumentException("Illegal 'candidate' argument in Scheme.matches(Term): " + candidate);
		if (!(candidate instanceof Atom))
			return false;
		Atom atom = (Atom) candidate;
		if (!atom.getIdentifier().equals(identifier) || atom.getArity() != terms.length)
			return false;
		boolean result = true;
		for (int i = 0; result && i < terms.length; i++)
			if (terms[i] instanceof Number)
				result = atom.getTerm(i) instanceof Number && ((Number) terms[i]).equals((Number) atom.getTerm(i));
			else if (terms[i] instanceof Quotation)
				result = atom.getTerm(i) instanceof Quotation && ((Quotation) terms[i]).equals((Quotation) atom.getTerm(i));
			else if (terms[i] instanceof Placemarker)
				result = true;
			else if (terms[i] instanceof Scheme)
				result = ((Scheme) terms[i]).matches(atom.getTerm(i));
			else
				result = false;
		return result;
	}

}
