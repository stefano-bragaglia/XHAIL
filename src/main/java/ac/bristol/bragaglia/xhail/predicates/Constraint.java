/**
 * 
 */
package ac.bristol.bragaglia.xhail.predicates;

import java.util.Arrays;
import java.util.Iterator;
import java.util.NoSuchElementException;
import java.util.StringJoiner;

/**
 * @author stefano
 *
 */
public class Constraint implements Comparable<Constraint>, Iterable<Literal> {

	private static final int INC = 3;

	private Literal[] body;

	private int i;

	public Constraint() {
		this.body = new Literal[INC];
		this.i = 0;
	}

	public void append(Literal literal) {
		if (i == body.length)
			body = Arrays.copyOf(body, body.length + INC);
		body[i++] = literal;
	}

	@Override
	public int compareTo(Constraint o) {
		int compare = o.count() - i;
		if (0 == compare) {
			int i = 0;
			while (0 == compare && i < body.length && i < o.body.length)
				compare = body[i].compareTo(o.body[i++]);
			if (0 == compare)
				compare = o.body.length - body.length;
		}
		return compare;
	}

	public int count() {
		return i;
	}

	


	/* (non-Javadoc)
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
		Constraint other = (Constraint) obj;
		if (!Arrays.equals(body, other.body))
			return false;
		if (i != other.i)
			return false;
		return true;
	}

	
	public Literal get(int i) {
		return body[i];
	}

	/* (non-Javadoc)
	 * @see java.lang.Object#hashCode()
	 */
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + Arrays.hashCode(body);
		result = prime * result + i;
		return result;
	}

	public Iterator<Literal> iterator() {
		return new Iterator<Literal>() {
			private int l = 0;

			@Override
			public boolean hasNext() {
				return (l < i);
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
		StringBuilder builder = new StringBuilder();
		if (i > 0) {
			builder.append(":- ");
			StringJoiner joiner = new StringJoiner(", ");
			for (int j = 0; j < i; j++)
				joiner.add(body[j].toString());
			builder.append(joiner.toString());
			builder.append(".");
		}
		return builder.toString();
	}

}
