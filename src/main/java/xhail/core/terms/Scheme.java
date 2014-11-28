/**
 * 
 */
package xhail.core.terms;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
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

	@Override
	public Collection<Placemarker> getPlacemarkers() {
		Set<Placemarker> result = new HashSet<>();
		for (SchemeTerm term : terms)
			result.addAll(term.getPlacemarkers());
		return result;
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

	// private int asGeneralisedAtom(int index, Atom.Builder builder) {
	// builder.setIdentifier(identifier);
	// for (SchemeTerm term : terms)
	// if (term instanceof Number)
	// builder.addTerm((Number) term);
	// else if (term instanceof Quotation)
	// builder.addTerm((Quotation) term);
	// else if (term instanceof Placemarker)
	// builder.addTerm(new Variable.Builder("V" + ++index).build());
	// else {
	// Atom.Builder next = new Atom.Builder("next");
	// index = ((Scheme) term).asGeneralisedAtom(index, next);
	// builder.addTerm(next.build());
	// }
	// return index;
	// }
	//
	// public Atom asGeneralisedAtom() {
	// Atom.Builder result = new Atom.Builder(identifier);
	// asGeneralisedAtom(0, result);
	// return result.build();
	// }

	@Override
	public Iterator<Scheme> iterator() {
		return new ArrayIterator<>(terms);
	}

	@Override
	public Map<Term, Collection<Term>> matching(Set<Term> usables, Map<SchemeTerm, Set<Atom>> parts) {
		Map<Atom.Builder, Set<Term>> builders = new HashMap<>();
		builders.put(new Atom.Builder(identifier), new HashSet<>());
		for (int i = 0; i < terms.length; i++) {
			Map<Term, Collection<Term>> nested = terms[i].matching(usables, parts);
			if (null == nested)
				return null;
			Map<Atom.Builder, Set<Term>> step = new HashMap<>();
			for (Term term : nested.keySet()) {
				for (Atom.Builder builder : builders.keySet()) {
					Atom.Builder key = builder.clone().addTerm(term);
					Set<Term> value = new HashSet<>(builders.get(builder));
					value.addAll(nested.get(term));
					step.put(key, value);
				}
			}
			builders = step;
		}
		Map<Term, Collection<Term>> result = new HashMap<>();
		for (Atom.Builder builder : builders.keySet())
			result.put(builder.build(), builders.get(builder));
		return result;
	}

	@Override
	public boolean subsumes(final Term term, final Collection<Atom> facts) {
		if (null == term)
			throw new IllegalArgumentException("Illegal 'term' argument in Scheme.subsumes(Term, Collection<Atom>): " + term);
		if (null == facts)
			throw new IllegalArgumentException("Illegal 'facts' argument in Scheme.subsumes(Term, Collection<Atom>): " + facts);
		if (term instanceof Atom) {
			Atom other = (Atom) term;
			boolean result = identifier.equals(other.getIdentifier()) && terms.length == other.getArity();
			for (int i = 0; result && i < terms.length; i++)
				result = terms[i].subsumes(other.getTerm(i), facts);
			return result;
		} else
			return false;
	}

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

}
