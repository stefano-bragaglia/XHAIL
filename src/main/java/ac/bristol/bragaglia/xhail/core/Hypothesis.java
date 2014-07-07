/**
 * 
 */
package ac.bristol.bragaglia.xhail.core;

import java.util.Collection;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.TreeMap;
import java.util.TreeSet;

import ac.bristol.bragaglia.xhail.predicates.Atom;
import ac.bristol.bragaglia.xhail.predicates.Clause;
import ac.bristol.bragaglia.xhail.predicates.Literal;

/**
 * @author stefano
 *
 */
public class Hypothesis extends Modifiable {

	public static Collection<Hypothesis> loadAll(Kernel kernel, Map<List<Integer>, Set<Set<Atom>>> answers) {
		if (null == answers || answers.size() > 1)
			throw new IllegalArgumentException("Illegal 'answers' argument in Grounding.loadAll(Map<List<Integer>, Set<Set<Atom>>>): " + answers);
		Set<Hypothesis> result = new LinkedHashSet<>();
		for (List<Integer> values : answers.keySet())
			for (Set<Atom> answer : answers.get(values)) {
				Hypothesis hypothesis = new Hypothesis(kernel, values);
				for (Atom fact : answer)
					if (Kernel.UCL.equals(fact.name()) && 2 == fact.arity())
						hypothesis.addUsed(Integer.parseInt(fact.get(0).toString()), Integer.parseInt(fact.get(1).toString()));
				result.add(hypothesis);
			}
		return result;
	}

	private Set<Clause> clauses;

	private Kernel kernel;

	private Map<Integer, Set<Integer>> using;

	// NB: can be empty if problem is only satisfiable.
	private List<Integer> values;

	public Hypothesis(Kernel kernel, List<Integer> values) {
		super();
		if (null == kernel)
			throw new IllegalArgumentException("Illegal 'kernel' argument in Hypothesis(Kernel): " + kernel);
		if (null == values)
			throw new IllegalArgumentException("Illegal 'values' argument in Hypothesis(List<Integer>): " + values);
		this.kernel = kernel;
		this.using = new TreeMap<>();
		this.values = values;
		assert invariant() : "Illegal state in Hypothesis(List<Integer>)";
	}

	public boolean addUsed(int clause, int literal) {
		if (clause < 0)
			throw new IllegalArgumentException("Illegal 'clause' argument in Hypothesis.addUsed(int, int): " + clause);
		if (literal < 0)
			throw new IllegalArgumentException("Illegal 'literal' argument in Hypothesis.addUsed(int, int): " + literal);
		Set<Integer> set = using.get(clause);
		if (null == set) {
			set = new TreeSet<>();
			using.put(clause, set);
		}
		boolean result = set.add(literal);
		if (result)
			update();
		assert invariant() : "Illegal state in Hypothesis.addUsed(int, int)";
		return result;
	}

	public Collection<Clause> clauses() {
		if (null == clauses || isModified()) {
			clauses = new LinkedHashSet<>();
			for (int cc : using.keySet()) {
				Set<Integer> set = using.get(cc);
				if (set.contains(0)) {
					Clause current = new Clause(kernel.get(cc));
					for (int ll : set)
						if (0 != ll)
							current.append(kernel.get(cc, ll));
					for (int ll : set)
						for (Literal literal : kernel.types(cc, ll))
							if (!current.contains(literal))
								current.append(literal);
					clauses.add(current);
				}
			}
			save();
		}
		assert invariant() : "Illegal state in Hypothesis.clauses()";
		return clauses;
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
		Hypothesis other = (Hypothesis) obj;
		if (clauses == null) {
			if (other.clauses != null)
				return false;
		} else if (!clauses.equals(other.clauses))
			return false;
		if (kernel == null) {
			if (other.kernel != null)
				return false;
		} else if (!kernel.equals(other.kernel))
			return false;
		if (using == null) {
			if (other.using != null)
				return false;
		} else if (!using.equals(other.using))
			return false;
		if (values == null) {
			if (other.values != null)
				return false;
		} else if (!values.equals(other.values))
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
		result = prime * result + ((clauses == null) ? 0 : clauses.hashCode());
		result = prime * result + ((kernel == null) ? 0 : kernel.hashCode());
		result = prime * result + ((using == null) ? 0 : using.hashCode());
		result = prime * result + ((values == null) ? 0 : values.hashCode());
		return result;
	}

	/**
	 * Invariant check against the internal state.
	 * 
	 * @return <code>true</code> if this instance's state is consistent,
	 *         <code>false</code> otherwise
	 */
	private boolean invariant() {
		return (null != kernel && null != using && null != values);
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see java.lang.Object#toString()
	 */
	@Override
	public String toString() {
		return "Hypothesis [\n  kernel=" + kernel + ",\n  using=" + using + ",\n  clauses=" + clauses + ",\n  values=" + values + "\n]";
	}

	public Collection<Integer> values() {
		assert invariant() : "Illegal state in Hypothesis.values()";
		return values;
	}

}
