/**
 * 
 */
package ac.bristol.bragaglia.xhail.predicates;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/**
 * @author stefano
 *
 */
public class Builder implements Iterable<Atom> {

	public static Builder get(Builder builder) {
		return new Builder(builder);
	}

	public static Builder get(String name) {
		return new Builder(name);
	}

	private String name;

	private List<Atom> terms;

	private Builder(Builder builder) {
		if (null == builder)
			throw new IllegalArgumentException("Illegal 'builder' argument in Builder(Builder): " + builder);
		this.name = builder.name;
		this.terms = new ArrayList<>(builder.terms);
	}

	private Builder(String name) {
		if (null == name || (name = name.trim()).isEmpty())
			throw new IllegalArgumentException("Illegal 'name' argument in Builder(String): " + name);
		this.name = name;
		this.terms = new ArrayList<>();
	}

	public Builder append(Atom predicate) {
		if (null == predicate)
			throw new IllegalArgumentException("Illegal 'predicate' argument in Builder.append(Predicate): " + predicate);
		terms.add(predicate);
		return this;
	}

	public Builder append(String name) {
		if (null == name || (name = name.trim()).isEmpty())
			throw new IllegalArgumentException("Illegal 'name' argument in Builder.append(String): " + name);
		terms.add(Builder.get(name).build());
		return this;
	}

	public Atom build() {
		return new Atom(name, terms);
	}

	public Builder clear() {
		terms.clear();
		return this;
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see java.lang.Object#equals(java.lang.Object)
	 */
	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Builder other = (Builder) obj;
		if (name == null) {
			if (other.name != null)
				return false;
		} else if (!name.equals(other.name))
			return false;
		if (terms == null) {
			if (other.terms != null)
				return false;
		} else if (!terms.equals(other.terms))
			return false;
		return true;
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see java.lang.Object#hashCode()
	 */
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((name == null) ? 0 : name.hashCode());
		result = prime * result + ((terms == null) ? 0 : terms.hashCode());
		return result;
	}

	@Override
	public Iterator<Atom> iterator() {
		return terms.iterator();
	}

	public Builder setName(String name) {
		if (null == name || (name = name.trim()).isEmpty())
			throw new IllegalArgumentException("Illegal 'name' argument in Builder.setName(String): " + name);
		this.name = name;
		return this;
	}

	@Override
	public String toString() {
		return String.format("{ %s : %s }", name, terms.toString());
	}

}
