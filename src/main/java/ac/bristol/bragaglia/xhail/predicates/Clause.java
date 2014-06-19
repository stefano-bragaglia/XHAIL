/**
 * 
 */
package ac.bristol.bragaglia.xhail.predicates;

import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.NoSuchElementException;
import java.util.StringJoiner;

/**
 * @author stefano
 *
 */
public class Clause implements Comparable<Clause>, Iterable<Literal> {

	private static final int INC = 3;

	private Literal[] body;

	private int count;

	private Atom head;

	public Clause(Atom head) {
		this.body = new Literal[INC];
		this.head = head;
		this.count = 0;
	}

	public Clause append(Literal literal) {
		if (count == body.length)
			body = Arrays.copyOf(body, body.length + INC);
		body[count++] = literal;
		return this;
	}

	public Clause appendAll(Collection<Literal> literals) {
		for (Literal literal : literals)
			append(literal);
		return this;
	}

	@Override
	public int compareTo(Clause o) {
		int compare = head.compareTo(o.head());
		if (0 == compare)
			compare = o.count() - count;
		if (0 == compare) {
			int j = 0;
			while (0 == compare && j < count && j < o.count())
				compare = body[j].compareTo(o.body[j++]);
		}
		return compare;
	}

	public boolean contains(Literal literal) {
		if (null == literal)
			throw new IllegalArgumentException("Illegal 'literal' argument in Clause.contains(Literal): " + literal);
		boolean found = false;
		for (int j = 0; !found && j < count; j++)
			found = body[j].equals(literal);
		// assert invariant() : "Illegal state in Clause.contains(Literal)";
		return found;
	}

	public int count() {
		return count;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Clause other = (Clause) obj;
		if (!Arrays.equals(body, other.body))
			return false;
		if (count != other.count)
			return false;
		if (head == null) {
			if (other.head != null)
				return false;
		} else if (!head.equals(other.head))
			return false;
		return true;
	}

	public Literal get(int i) {
		return body[i];
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + Arrays.hashCode(body);
		result = prime * result + count;
		result = prime * result + ((head == null) ? 0 : head.hashCode());
		return result;
	}

	public Atom head() {
		return head;
	}

	public Iterator<Literal> iterator() {
		return new Iterator<Literal>() {
			private int l = 0;

			@Override
			public boolean hasNext() {
				return (l < count);
			}

			@Override
			public Literal next() {
				if (hasNext())
					return body[l++];
				else
					throw new NoSuchElementException();
			}
		};
	}

	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder(head.toString());
		if (count > 0) {
			builder.append(" :- ");
			StringJoiner joiner = new StringJoiner(", ");
			for (int j = 0; j < count; j++)
				joiner.add(body[j].toString());
			builder.append(joiner.toString());
		}
		builder.append(".");
		return builder.toString();
	}

}
