/**
 * 
 */
package xhail.core.terms;

import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.Set;

import org.apache.commons.collections4.iterators.ArrayIterator;

import xhail.core.Buildable;

/**
 * @author stefano
 *
 */
public class Clause implements Iterable<Literal> {

	public static class Builder implements Buildable<Clause> {

		private Set<Literal> body = new LinkedHashSet<>();

		private Atom head = null;

		public Builder addLiteral(Literal literal) {
			if (null == literal)
				throw new IllegalArgumentException("Illegal 'literal' argument in Clause.Builder.addLiteral(Literal): " + literal);
			body.add(literal);
			return this;
		}

		public Builder addLiterals(Collection<Literal> literals) {
			if (null == literals)
				throw new IllegalArgumentException("Illegal 'literals' argument in Clause.Builder.addLiteral(Collection<Literal>): " + literals);
			body.addAll(literals);
			return this;
		}

		@Override
		public Clause build() {
			return new Clause(this);
		}

		public Builder clearBody() {
			body.clear();
			return this;
		}

		public Builder removeLiteral(Literal literal) {
			if (null == literal)
				throw new IllegalArgumentException("Illegal 'literal' argument in Clause.Builder.removeLiteral(Literal): " + literal);
			body.remove(literal);
			return this;
		}

		public Builder removeLiterals(Collection<Literal> literals) {
			if (null == literals)
				throw new IllegalArgumentException("Illegal 'literals' argument in Clause.Builder.removeLiteral(Collection<Literal>): " + literals);
			body.removeAll(literals);
			return this;
		}

		public Builder setHead(Atom head) {
			this.head = head;
			return this;
		}

	}

	private final Literal[] body;

	private final Atom head;

	private Clause(Builder builder) {
		if (null == builder)
			throw new IllegalArgumentException("Illegal 'builder' argument in Clause(Clause.Builder): " + builder);
		this.body = builder.body.toArray(new Literal[builder.body.size()]);
		this.head = builder.head;
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
		if (head == null) {
			if (other.head != null)
				return false;
		} else if (!head.equals(other.head))
			return false;
		return true;
	}

	public Literal[] getBody() {
		return body;
	}

	public Literal getBody(int index) {
		if (index < 1 || index > body.length)
			throw new IndexOutOfBoundsException("Illegal 'index' argument in Clause.getBody(int): " + index);
		return body[index - 1];
	}

	public Atom getHead() {
		return head;
	}

	public int getSize() {
		return body.length;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + Arrays.hashCode(body);
		result = prime * result + ((head == null) ? 0 : head.hashCode());
		return result;
	}

	@Override
	public Iterator<Literal> iterator() {
		return new ArrayIterator<>(body);
	}

	public int getLevels() {
		int result = 0;
		for (Literal literal : body) {
			int level = literal.getLevel();
			if (level > result)
				result = level;
		}
		return result;
	}

	@Override
	public String toString() {
		String result = "";
		if (null != head)
			result += head.toString();
		if (body.length > 0 || null == head) {
			result += ":-";
			for (int i = 0; i < body.length; i++) {
				if (i > 0)
					result += ",";
				result += body[i].toString();
			}
		}
		result += ".";
		return result;
	}

}
