/**
 * 
 */
package ac.bristol.bragaglia.xhail.predicates;

import java.util.Iterator;

/**
 * @author stefano
 *
 */
public class Literal implements Comparable<Literal>, Iterable<Atom> {

	private Atom atom;

	private boolean negated;

	public Literal(boolean negated, Atom atom) {
		this.negated = negated;
		this.atom = atom;
	}

	/**
	 * @return
	 */
	public int arity() {
		return atom.arity();
	}

	public Atom atom() {
		return atom;
	}

	@Override
	public int compareTo(Literal o) {
		int compare = Boolean.compare(negated, o.negated());
		if (0 == compare)
			compare = atom.compareTo(o.atom);
		return compare;
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
		Literal other = (Literal) obj;
		if (atom == null) {
			if (other.atom != null)
				return false;
		} else if (!atom.equals(other.atom))
			return false;
		if (negated != other.negated)
			return false;
		return true;
	}

	/**
	 * @param i
	 * @return
	 */
	public Atom get(int i) {
		return atom.get(i);
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
		result = prime * result + ((atom == null) ? 0 : atom.hashCode());
		result = prime * result + (negated ? 1231 : 1237);
		return result;
	}

	@Override
	public Iterator<Atom> iterator() {
		return atom.iterator();
	}

	/**
	 * @return
	 */
	public String name() {
		return atom.name();
	}

	/**
	 * @return
	 */
	public boolean negated() {
		return negated;
	}

	public String toPrint() {
		String result = atom.toPrint();
		if (negated)
			result = "not " + result;
		return result;
	}

	@Override
	public String toString() {
		String result = atom.toString();
		if (negated)
			result = "not " + result;
		return result;
	}

}
