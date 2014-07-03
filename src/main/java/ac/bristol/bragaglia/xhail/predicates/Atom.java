/**
 * 
 */
package ac.bristol.bragaglia.xhail.predicates;

import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.NoSuchElementException;
import java.util.StringJoiner;

import ac.bristol.bragaglia.xhail.core.Memory;

/**
 * @author stefano
 *
 */
public class Atom implements Comparable<Atom>, Iterable<Atom> {

	public static final int ID_ATOM = 3;

	public static final int ID_LEVEL = 0;

	public static final int ID_PRIORITY = 2;

	public static final int ID_SCHEMA = 4;
	public static final int ID_ACCESSORS = ID_SCHEMA;

	public static final int ID_TYPES = 1;

	public static final int ID_VARS = 0;

	public static final int ID_WEIGHT = 1;

	public static final String TAG_ACCESSORS = "#accessors";

	public static final String TAG_NOTE = "#note";

	public static final String TAG_TYPES = "#types";

	public static final String TAG_VARS = "#vars";

	/**
	 * Returns a predicate annotation that includes specific information about a
	 * given atom.
	 * 
	 * @param level
	 *            the deduction level of the atom (as an <code>Atom</code>)
	 * @param atom
	 *            the atom to be annotated
	 * @param schema
	 *            the supporting schema of the atom
	 * @param weight
	 *            the weight associated to the supporting schema (as an
	 *            <code>Atom</code>)
	 * @param priority
	 *            the priority associated to the supporting schema (as an
	 *            <code>Atom</code>)
	 * @return a predicate annotation including the above information
	 */
	public static Atom annotate(Atom level, Atom atom, Atom schema, Atom weight, Atom priority) {
		if (null == level)
			throw new IllegalArgumentException("Illegal 'level' argument in Deduction.annotate(Atom, Atom, Atom, Atom, Atom): " + level);
		if (null == atom)
			throw new IllegalArgumentException("Illegal 'atom' argument in Deduction.annotate(Atom, Atom, Atom, Atom, Atom): " + atom);
		if (null == schema)
			throw new IllegalArgumentException("Illegal 'schema' argument in Deduction.annotate(Atom, Atom, Atom, Atom, Atom): " + schema);
		if (null == weight)
			throw new IllegalArgumentException("Illegal 'weight' argument in Deduction.annotate(Atom, Atom, Atom, Atom, Atom): " + weight);
		if (null == priority)
			throw new IllegalArgumentException("Illegal 'priority' argument in Deduction.annotate(Atom, Atom, Atom, Atom, Atom): " + priority);
		Builder builder = Builder.get(TAG_NOTE);
		builder.append(level);
		builder.append(weight);
		builder.append(priority);
		builder.append(atom);
		builder.append(schema);
		return builder.build();
	}

	/**
	 * Returns a predicate annotation that includes specific information about a
	 * given atom.
	 * 
	 * @param level
	 *            the deduction level of the atom (as an <code>int</code>)
	 * @param atom
	 *            the atom to be annotated
	 * @param schema
	 *            the supporting schema of the atom
	 * @param weight
	 *            the weight associated to the supporting schema (as an
	 *            <code>int</code>)
	 * @param priority
	 *            the priority associated to the supporting schema (as an
	 *            <code>int</code>)
	 * @return a predicate annotation including the above information
	 */
	public static Atom annotate(int level, Atom atom, Atom schema, int weight, int priority) {
		if (level < 0)
			throw new IllegalArgumentException("Illegal 'level' argument in Deduction.annotate(int, Atom, Atom, int, int): " + level);
		if (null == atom)
			throw new IllegalArgumentException("Illegal 'atom' argument in Deduction.annotate(int, Atom, Atom, int, int): " + atom);
		if (null == schema)
			throw new IllegalArgumentException("Illegal 'schema' argument in Deduction.annotate(int, Atom, Atom, int, int): " + schema);
		return annotate(Builder.get(String.valueOf(level)).build(), atom, schema, //
				Builder.get(String.valueOf(weight)).build(), //
				Builder.get(String.valueOf(priority)).build());
	}

	public static final String ARITH_ABS = "#abs";

	public static final String ARITH_ASSIGN = "#assign";

	public static final String ARITH_DIVIDE = "#div";

	public static final String ARITH_MINUS = "#minus";

	public static final String ARITH_MODULUS = "#mod";

	public static final String ARITH_PLUS = "#plus";

	public static final String ARITH_POWER = "#pow";

	public static final String ARITH_TIMES = "#times";

	public static final String BIT_AND = "#and";

	public static final String BIT_NOT = "#not";

	public static final String BIT_OR = "#or";

	public static final String BIT_XOR = "#xor";

	public static final String COMP_EQ = "#eq";

	public static final String COMP_GE = "#ge";

	public static final String COMP_GT = "#gt";

	public static final String COMP_LE = "#le";

	public static final String COMP_LT = "#lt";

	public static final String COMP_NE = "#ne";

	public static final String CON_SYMBOL = "$";

	public static final String INP_SYMBOL = "+";

	public static final String INTERVAL = "#interval";

	public static final String OUP_SYMBOL = "-";

	public static final String PAR_CONSTANT = "con_tag";

	public static final String PAR_INPUT = "inp_tag";

	public static final String PAR_OUTPUT = "oup_tag";

	public static final String POOLING = "#pooling";

	/**
	 * 
	 */
	private String name;

	/**
	 * 
	 */
	private Atom[] terms;

	/**
	 * @param name
	 * @param terms
	 */
	public Atom(String name, Collection<Atom> terms) {
		int i = 0;
		this.name = name;
		this.terms = new Atom[terms.size()];
		for (Atom term : terms)
			this.terms[i++] = term;
	}

	/**
	 * @param name
	 * @param terms
	 */
	public Atom(String name, Atom[] terms) {
		this.name = name;
		this.terms = new Atom[terms.length];
		for (int i = 0; i < terms.length; i++)
			this.terms[i] = terms[i];
	}

	/**
	 * @return
	 */
	public int arity() {
		return terms.length;
	}

	@Override
	public int compareTo(Atom o) {
		int compare = name.compareTo(o.name());
		if (0 == compare) {
			int i = 0;
			while (0 == compare && i < arity() && i < o.arity())
				compare = get(i).compareTo(o.get(i++));
			if (0 == compare)
				compare = o.arity() - arity();
		}
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
		Atom other = (Atom) obj;
		if (name == null) {
			if (other.name != null)
				return false;
		} else if (!name.equals(other.name))
			return false;
		if (!Arrays.equals(terms, other.terms))
			return false;
		return true;
	}

	/**
	 * @param i
	 * @return
	 */
	public Atom get(int i) {
		return terms[i];
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
		result = prime * result + Arrays.hashCode(terms);
		return result;
	}

	public boolean isParameter() {
		return ((1 == terms.length || 2 == terms.length) && (name.equals(PAR_INPUT) || name.equals(PAR_OUTPUT) || name.equals(PAR_CONSTANT)));
	}

	public boolean isVariable() {
		return terms.length == 0 && name.length() > 0 && name.charAt(0) >= 'A' && name.charAt(0) <= 'Z';
	}

	@Override
	public Iterator<Atom> iterator() {
		return new Iterator<Atom>() {
			private int i = 0;

			@Override
			public boolean hasNext() {
				return (i < terms.length);
			}

			@Override
			public Atom next() {
				if (hasNext())
					return terms[i++];
				else
					throw new NoSuchElementException();
			}
		};
	}

	/**
	 * @return
	 */
	public String name() {
		return name;
	}

	public Atom[] terms() {
		return terms;
	}

	public String toPrint() {
		if (INTERVAL.equals(name) && 2 == arity()) {
			return terms[0].toPrint() + ".." + terms[1].toPrint();
		} else if (POOLING.equals(name) && arity() >= 2) {
			StringJoiner joiner = new StringJoiner(";");
			for (Atom term : terms)
				joiner.add(term.toPrint());
			return joiner.toString();
		} else if (ARITH_ABS.equals(name) && 1 == arity()) {
			return "|" + terms[0].toPrint() + "|";
		} else if (ARITH_ASSIGN.equals(name) && 2 == arity()) {
			return terms[0].toPrint() + "=" + terms[1].toPrint();
		} else if (ARITH_DIVIDE.equals(name) && 2 == arity()) {
			return terms[0].toPrint() + "/" + terms[1].toPrint();
		} else if (ARITH_MINUS.equals(name) && 1 == arity()) {
			return "-" + terms[0].toPrint();
		} else if (ARITH_MINUS.equals(name) && 2 == arity()) {
			return terms[0].toPrint() + "-" + terms[1].toPrint();
		} else if (ARITH_MODULUS.equals(name) && 2 == arity()) {
			return terms[0].toPrint() + "\\" + terms[1].toPrint();
		} else if (ARITH_PLUS.equals(name) && 2 == arity()) {
			return terms[0].toPrint() + "+" + terms[1].toPrint();
		} else if (ARITH_POWER.equals(name) && 2 == arity()) {
			return terms[0].toPrint() + "**" + terms[1].toPrint();
		} else if (ARITH_TIMES.equals(name) && 2 == arity()) {
			return terms[0].toPrint() + "*" + terms[1].toPrint();
		} else if (BIT_AND.equals(name) && 2 == arity()) {
			return terms[0].toPrint() + "&" + terms[1].toPrint();
		} else if (BIT_NOT.equals(name) && 1 == arity()) {
			return "~" + terms[0].toPrint();
		} else if (BIT_OR.equals(name) && 2 == arity()) {
			return terms[0].toPrint() + "?" + terms[1].toPrint();
		} else if (BIT_XOR.equals(name) && 2 == arity()) {
			return terms[0].toPrint() + "^" + terms[1].toPrint();
		} else if (COMP_EQ.equals(name) && 2 == arity()) {
			return terms[0].toPrint() + "==" + terms[1].toPrint();
		} else if (COMP_GE.equals(name) && 2 == arity()) {
			return terms[0].toPrint() + ">=" + terms[1].toPrint();
		} else if (COMP_GT.equals(name) && 2 == arity()) {
			return terms[0].toPrint() + ">" + terms[1].toPrint();
		} else if (COMP_LE.equals(name) && 2 == arity()) {
			return terms[0].toPrint() + "<=" + terms[1].toPrint();
		} else if (COMP_LT.equals(name) && 2 == arity()) {
			return terms[0].toPrint() + "<" + terms[1].toPrint();
		} else if (COMP_NE.equals(name) && 2 == arity()) {
			return terms[0].toPrint() + "!=" + terms[1].toPrint();
		} else {
			if (0 == arity())
				return name;
			StringJoiner joiner = new StringJoiner(", ");
			for (Atom term : terms)
				joiner.add(term.toPrint());
			return String.format("%s(%s)", name, joiner.toString());
		}
	}

	@Override
	public String toString() {
		if (INTERVAL.equals(name) && 2 == arity()) {
			return terms[0].toString() + ".." + terms[1].toString();
		} else if (POOLING.equals(name) && arity() >= 2) {
			StringJoiner joiner = new StringJoiner(";");
			for (Atom term : terms)
				joiner.add(term.toString());
			return joiner.toString();
		} else if (ARITH_ABS.equals(name) && 1 == arity()) {
			return "|" + terms[0].toString() + "|";
		} else if (ARITH_ASSIGN.equals(name) && 2 == arity()) {
			return terms[0].toString() + "=" + terms[1].toString();
		} else if (ARITH_DIVIDE.equals(name) && 2 == arity()) {
			return terms[0].toString() + "/" + terms[1].toString();
		} else if (ARITH_MINUS.equals(name) && 1 == arity()) {
			return "-" + terms[0].toString();
		} else if (ARITH_MINUS.equals(name) && 2 == arity()) {
			return terms[0].toString() + "-" + terms[1].toString();
		} else if (ARITH_MODULUS.equals(name) && 2 == arity()) {
			return terms[0].toString() + "\\" + terms[1].toString();
		} else if (ARITH_PLUS.equals(name) && 2 == arity()) {
			return terms[0].toString() + "+" + terms[1].toString();
		} else if (ARITH_POWER.equals(name) && 2 == arity()) {
			return terms[0].toString() + "**" + terms[1].toString();
		} else if (ARITH_TIMES.equals(name) && 2 == arity()) {
			return terms[0].toString() + "*" + terms[1].toString();
		} else if (BIT_AND.equals(name) && 2 == arity()) {
			return terms[0].toString() + "&" + terms[1].toString();
		} else if (BIT_NOT.equals(name) && 1 == arity()) {
			return "~" + terms[0].toString();
		} else if (BIT_OR.equals(name) && 2 == arity()) {
			return terms[0].toString() + "?" + terms[1].toString();
		} else if (BIT_XOR.equals(name) && 2 == arity()) {
			return terms[0].toString() + "^" + terms[1].toString();
		} else if (COMP_EQ.equals(name) && 2 == arity()) {
			return terms[0].toString() + "==" + terms[1].toString();
		} else if (COMP_GE.equals(name) && 2 == arity()) {
			return terms[0].toString() + ">=" + terms[1].toString();
		} else if (COMP_GT.equals(name) && 2 == arity()) {
			return terms[0].toString() + ">" + terms[1].toString();
		} else if (COMP_LE.equals(name) && 2 == arity()) {
			return terms[0].toString() + "<=" + terms[1].toString();
		} else if (COMP_LT.equals(name) && 2 == arity()) {
			return terms[0].toString() + "<" + terms[1].toString();
		} else if (COMP_NE.equals(name) && 2 == arity()) {
			return terms[0].toString() + "!=" + terms[1].toString();
		} else if (PAR_INPUT.equals(name) && 2 == arity()) {
			return INP_SYMBOL + terms[1].toString() + "(" + terms[0].toString() + ")";
		} else if (PAR_INPUT.equals(name) && 1 == arity()) {
			return INP_SYMBOL + terms[0].toString();
		} else if (PAR_OUTPUT.equals(name) && 2 == arity()) {
			return OUP_SYMBOL + terms[1].toString() + "(" + terms[0].toString() + ")";
		} else if (PAR_OUTPUT.equals(name) && 1 == arity()) {
			return OUP_SYMBOL + terms[0].toString();
		} else if (PAR_CONSTANT.equals(name) && 2 == arity()) {
			return CON_SYMBOL + terms[1].toString() + "(" + terms[0].toString() + ")";
		} else if (PAR_CONSTANT.equals(name) && 1 == arity()) {
			return CON_SYMBOL + terms[0].toString();
		} else {
			if (0 == arity())
				return name;
			StringJoiner joiner = new StringJoiner(", ");
			for (Atom term : terms)
				joiner.add(term.toString());
			return String.format("%s(%s)", name, joiner.toString());
		}
	}

	public Memory vars() {
		Memory result = new Memory();
		if (Atom.PAR_INPUT.equals(name) && 2 == terms.length)
			result.append(terms[1], terms[0]);
		else
			for (Atom term : terms)
				result.append(term.vars());
		return result;
	}

	public Atom asHead() {
		Atom result;
		String name = this.name();
		if (2 == arity() && (Atom.PAR_INPUT.equals(name) || Atom.PAR_OUTPUT.equals(name) || Atom.PAR_CONSTANT.equals(name)))
			result = terms[0];
		else {
			Builder builder = Builder.get(name);
			for (Atom term : terms)
				builder.append(term.asHead());
			result = builder.build();
		}
		return result;
	}

}
