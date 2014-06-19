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
