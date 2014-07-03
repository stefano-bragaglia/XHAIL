/**
 * 
 */
package ac.bristol.bragaglia.xhail.predicates;

/**
 * @author stefano
 *
 */
public class Abducible extends Atom {

	private int priority;

	private int weight;

	public Abducible(String name, Atom[] terms, int weight, int priority) {
		super(name, terms);
		this.priority = priority;
		this.weight = weight;
	}

	public int getPriority() {
		return priority;
	}

	public int getWeight() {
		return weight;
	}

	public Atom asHead() {
		Builder builder = Builder.get(this.name());
		for (Atom term : this.terms())
			builder.append(term.asHead());
		Atom result = builder.build();
		return result;
	}

}
