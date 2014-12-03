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
public class Quotation implements Term, SchemeTerm {

	public static class Builder implements Buildable<Quotation> {

		private String content;

		public Builder(String content) {
			if (null == content || (content = content.trim()).isEmpty() || content.length() < 2 || !content.startsWith("\"") || !content.endsWith("\""))
				throw new IllegalArgumentException("Illegal 'content' argument in Quotation.Builder(String): " + content);
			this.content = content;
		}

		@Override
		public Quotation build() {
			return new Quotation(this);
		}

		public Builder setContent(String content) {
			if (null == content || (content = content.trim()).isEmpty() || content.length() < 2 || !content.startsWith("\"") || !content.endsWith("\""))
				throw new IllegalArgumentException("Illegal 'content' argument in Quotation.Builder.setContent(String): " + content);
			this.content = content;
			return this;
		}

	}

	private final String content;

	private Quotation(Builder builder) {
		if (null == builder)
			throw new IllegalArgumentException("Illegal 'builder' argument in Quotation(Quotation.Builder): " + builder);
		this.content = builder.content;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Quotation other = (Quotation) obj;
		if (content == null) {
			if (other.content != null)
				return false;
		} else if (!content.equals(other.content))
			return false;
		return true;
	}

	@Override
	public Term generalises(Set<Variable> set) {
		if (null == set)
			throw new IllegalArgumentException("Illegal 'term' argument in Quotation.generalises(Set<Variable>): " + set);
		return this;
	}

	@Override
	public Term generalises(Term term, Map<Term, Variable> map) {
		if (null == term)
			throw new IllegalArgumentException("Illegal 'term' argument in Quotation.generalises(Term, Map<Term, Variable>): " + term);
		if (null == map)
			throw new IllegalArgumentException("Illegal 'map' argument in Quotation.generalises(Term, Map<Term, Variable>): " + map);
		if (term instanceof Quotation) {
			Quotation other = (Quotation) term;
			if (other.getContent().equals(content))
				return this;
			else
				return null;
		} else
			return null;
	}

	public final String getContent() {
		return content;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((content == null) ? 0 : content.hashCode());
		return result;
	}

//	@Override
//	public Collection<Term> matches(SchemeTerm term, Collection<Term> usables, Set<Atom> facts) {
//		if (null == term)
//			throw new IllegalArgumentException("Illegal 'term' argument in Quotation.matches(SchemeTerm, Collection<Term>, Set<Atom>): " + term);
//		if (null == usables)
//			throw new IllegalArgumentException("Illegal 'usables' argument in Quotation.matches(SchemeTerm, Collection<Term>, Set<Atom>): " + usables);
//		if (null == facts)
//			throw new IllegalArgumentException("Illegal 'facts' argument in Quotation.matches(SchemeTerm, Collection<Term>, Set<Atom>): " + facts);
//		if (term instanceof Quotation) {
//			Quotation other = (Quotation) term;
//			if (content == other.getContent())
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
		return content;
	}

}
