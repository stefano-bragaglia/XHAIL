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
import java.util.Set;

import org.apache.commons.collections4.iterators.ArrayIterator;

import xhail.core.Buildable;

/**
 * @author stefano
 *
 */
public class Atom implements Term, Iterable<Atom>, Comparable<Atom> {

	public static class Builder implements Buildable<Atom> {

		@Override
		public String toString() {
			return "Builder [identifier=" + identifier + ", terms=" + terms + ", scheme=" + scheme + ", weight=" + weight + ", priority=" + priority + "]";
		}

		private String identifier;

		private int priority = 1;

		private SchemeTerm scheme = null;

		private List<Term> terms = new ArrayList<>();

		private int weight = 1;

		public Builder(Atom atom) {
			if (null == atom)
				throw new IllegalArgumentException("Illegal 'atom' argument in Atom.Builder.Builder(Atom): " + atom);
			this.identifier = atom.identifier;
			this.priority = atom.priority;
			this.scheme = atom.scheme;
			this.terms = new ArrayList<>();
			for (Term term : atom.terms)
				this.terms.add(term);
			this.weight = atom.weight;
		}

		public Builder(String identifier) {
			if (null == identifier || (identifier = identifier.trim()).isEmpty() || identifier.charAt(0) < 'a' || identifier.charAt(0) > 'z')
				throw new IllegalArgumentException("Illegal 'identifier' argument in Atom.Builder(String): " + identifier);
			this.identifier = identifier;
		}

		public Builder addTerm(Term term) {
			if (null == term)
				throw new IllegalArgumentException("Illegal 'term' argument in Atom.Builder.addTerm(Term): " + term);
			this.terms.add(term);
			return this;
		}

		public Builder addTerms(Collection<Term> terms) {
			if (null == terms)
				throw new IllegalArgumentException("Illegal 'terms' argument in Atom.Builder.addTerms(Collection<Term>): " + terms);
			this.terms.addAll(terms);
			return this;
		}

		public Builder addTerms(Term[] terms) {
			if (null == terms)
				throw new IllegalArgumentException("Illegal 'terms' argument in Atom.Builder.addTerms(Term[]): " + terms);
			for (Term term : terms)
				this.terms.add(term);
			return this;
		}

		@Override
		public Atom build() {
			return new Atom(this);
		}

		public Builder clearTerms() {
			this.terms.clear();
			return this;
		}

		public Builder clone() {
			Builder result = new Builder(identifier).addTerms(terms).setWeight(weight).setPriority(priority);
			if (null != scheme)
				result.setScheme(scheme);
			return result;
		}

		public Builder removeTerm(Term term) {
			if (null == term)
				throw new IllegalArgumentException("Illegal 'term' argument in Atom.Builder.removeTerm(Term): " + term);
			this.terms.remove(term);
			return this;
		}

		public Builder removeTerms(Collection<Term> terms) {
			if (null == terms)
				throw new IllegalArgumentException("Illegal 'terms' argument in Atom.Builder.removeTerms(Collection<Term>): " + terms);
			this.terms.removeAll(terms);
			return this;
		}

		public Builder removeTerms(Term[] terms) {
			if (null == terms)
				throw new IllegalArgumentException("Illegal 'terms' argument in Atom.Builder.removeTerms(Term[]): " + terms);
			for (Term term : terms)
				this.terms.remove(term);
			return this;
		}

		public Builder setIdentifier(String identifier) {
			if (null == identifier || (identifier = identifier.trim()).isEmpty() || identifier.charAt(0) < 'a' || identifier.charAt(0) > 'z')
				throw new IllegalArgumentException("Illegal 'identifier' argument in Atom.Builder.setIdentifier(String): " + identifier);
			this.identifier = identifier;
			return this;
		}

		public Builder setPriority(int priority) {
			this.priority = priority;
			return this;
		}

		public Builder setScheme(SchemeTerm scheme) {
			if (null == scheme)
				throw new IllegalArgumentException("Illegal 'scheme' argument in Atom.Builder.addScheme(SchemeTerm): " + scheme);
			this.scheme = scheme;
			return this;
		}

		public Builder setWeight(int weight) {
			this.weight = weight;
			return this;
		}

	}

	private final String identifier;

	private final int priority;

	private final SchemeTerm scheme;

	private final Term[] terms;

	private final int weight;

	private Atom(Builder builder) {
		if (null == builder)
			throw new IllegalArgumentException("Illegal 'builder' argument in Atom(Atom.Builder): " + builder);
		this.identifier = builder.identifier;
		this.priority = builder.priority;
		this.scheme = builder.scheme;
		this.terms = builder.terms.toArray(new Term[builder.terms.size()]);
		this.weight = builder.weight;
	}

	@Override
	public int compareTo(Atom o) {
		int result = identifier.compareTo(o.identifier);
		if (0 == result)
			result = o.terms.length - terms.length;
		if (0 == result)
			for (int i = 0; 0 == result && i < terms.length; i++)
				result = o.terms[i].toString().compareTo(terms[i].toString());
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
		Atom other = (Atom) obj;
		if (identifier == null) {
			if (other.identifier != null)
				return false;
		} else if (!identifier.equals(other.identifier))
			return false;
		if (priority != other.priority)
			return false;
		if (scheme == null) {
			if (other.scheme != null)
				return false;
		} else if (!scheme.equals(other.scheme))
			return false;
		if (!Arrays.equals(terms, other.terms))
			return false;
		if (weight != other.weight)
			return false;
		return true;
	}

	// @Override
	// public Collection<Term> filters(SchemeTerm term) {
	// if (null == term)
	// throw new
	// IllegalArgumentException("Illegal 'term' argument in Atom.filter(SchemeTerm): "
	// + term);
	// if (term instanceof Placemarker) {
	// Placemarker other = (Placemarker) term;
	// if (other.getType() == Type.INPUT)
	// return Collections.singleton(this);
	// else
	// return Collections.emptySet();
	// } else if (term instanceof Scheme) {
	// Scheme other = (Scheme) term;
	// if (!identifier.equals(other.getIdentifier()) || terms.length !=
	// other.getArity())
	// return null;
	// Set<Term> result = new HashSet<>();
	// for (int i = 0; i < terms.length; i++) {
	// Collection<Term> nested = terms[i].filters(other.getTerm(i));
	// if (null == nested)
	// return null;
	// result.addAll(nested);
	// }
	// return result;
	// } else
	// return null;
	// }

	public final int getArity() {
		return terms.length;
	}

	public final String getIdentifier() {
		return identifier;
	}

	public final int getPriority() {
		return priority;
	}

	public final SchemeTerm getScheme() {
		return scheme;
	}

	public final Term getTerm(int index) {
		if (index < 0 || index >= terms.length)
			throw new IndexOutOfBoundsException("Illegal 'index' argument in Atom.getTerm(int): " + index);
		return terms[index];
	}

	public final Term[] getTerms() {
		return terms;
	}

	public final int getWeight() {
		return weight;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((identifier == null) ? 0 : identifier.hashCode());
		result = prime * result + priority;
		result = prime * result + ((scheme == null) ? 0 : scheme.hashCode());
		result = prime * result + Arrays.hashCode(terms);
		result = prime * result + weight;
		return result;
	}

	public boolean isPlacemarker() {
		return (Placemarker.CONSTANT_STRING.equals(identifier) || Placemarker.INPUT_STRING.equals(identifier) || Placemarker.OUTPUT_STRING.equals(identifier))
				&& 1 == terms.length;
	}

	@Override
	public Iterator<Atom> iterator() {
		return new ArrayIterator<>(terms);
	}

	// @Override
	// public Collection<Term> matches(SchemeTerm term, Collection<Term>
	// usables, Set<Atom> facts) {
	// if (null == term)
	// throw new
	// IllegalArgumentException("Illegal 'term' argument in Atom.matches(SchemeTerm, Collection<Term>, Set<Atom>): "
	// + term);
	// if (null == usables)
	// throw new
	// IllegalArgumentException("Illegal 'usables' argument in Atom.matches(SchemeTerm, Collection<Term>, Set<Atom>): "
	// + usables);
	// if (null == facts)
	// throw new
	// IllegalArgumentException("Illegal 'facts' argument in Atom.matches(SchemeTerm, Collection<Term>, Set<Atom>): "
	// + facts);
	// if (term instanceof Placemarker) {
	// Placemarker other = (Placemarker) term;
	// if (other.getType() == Type.INPUT)
	// if (usables.contains(this))
	// return Collections.emptySet();
	// else
	// return null;
	// else if (other.getType() == Type.OUTPUT)
	// return Collections.singleton(this);
	// else
	// return Collections.emptySet();
	// } else if (term instanceof Scheme) {
	// Scheme other = (Scheme) term;
	// if (!identifier.equals(other.getIdentifier()) || terms.length !=
	// other.getArity())
	// return null;
	// Set<Term> result = new HashSet<>();
	// for (int i = 0; i < terms.length; i++) {
	// Collection<Term> nested = terms[i].matches(other.getTerm(i), usables,
	// facts);
	// if (null == nested)
	// return null;
	// result.addAll(nested);
	// }
	// return result;
	// } else
	// return null;
	// }

	@Override
	public String toString() {
		String result = identifier;
		if (terms.length > 0) {
			result += "(";
			for (int i = 0; i < terms.length; i++) {
				if (i > 0)
					result += ",";
				result += terms[i].toString();
			}
			result += ")";
		}
		return result;
	}

	private final void getVariables(Set<Variable> result) {
		if (null == result)
			throw new IllegalArgumentException("Illegal 'result' argument in Atom.getVariables(Set<Variable>): " + result);
		for (Term term : terms)
			if (term instanceof Variable)
				result.add((Variable) term);
			else if (term instanceof Atom)
				((Atom) term).getVariables(result);
	}

	private Variable[] variables;

	public final boolean hasVariables() {
		return getVariables().length > 0;
	}

	public final Variable[] getVariables() {
		if (null == variables) {
			Set<Variable> result = new LinkedHashSet<>();
			getVariables(result);
			variables = result.toArray(new Variable[result.size()]);
		}
		return variables;
	}

	public final boolean hasTypes() {
		return getVariables().length > 0;
	}

	public final String[] getTypes() {
		int length = getVariables().length;
		String[] result = new String[length];
		for (int i = 0; i < length; i++)
			result[i] = String.format("%s(%s)", variables[i].getType().getIdentifier(), variables[i].getIdentifier());
		return result;
	}

	// public final String[] getVariables() {
	// int length = getPlacemarkers().length;
	// String[] result = new String[length];
	// for (int i = 0; i < length; i++)
	// result[i] = String.format("V%d", 1 + i);
	// return result;
	// }

}
