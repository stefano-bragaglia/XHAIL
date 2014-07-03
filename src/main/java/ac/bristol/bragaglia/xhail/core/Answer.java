/**
 * 
 */
package ac.bristol.bragaglia.xhail.core;

import java.util.Collection;
import java.util.Collections;
import java.util.LinkedHashSet;

import ac.bristol.bragaglia.xhail.predicates.Abducible;
import ac.bristol.bragaglia.xhail.predicates.Atom;
import ac.bristol.bragaglia.xhail.predicates.Clause;

/**
 * @author stefano
 *
 */
public class Answer {

	private Grounding grounding;

	private Hypothesis hypothesis;

	private Kernel kernel;

	private Problem problem;

	public Answer(Problem problem, Grounding grounding) {
		if (null == problem)
			throw new IllegalArgumentException("Illegal 'problem' argument in Answer(Problem, Grounding): " + problem);
		if (null == grounding)
			throw new IllegalArgumentException("Illegal 'grounding' argument in Answer(Problem, Grounding): " + grounding);
		this.grounding = grounding;
		this.hypothesis = null;
		this.kernel = null;
		this.problem = problem;
		assert invariant() : "Illegal state in Answer(Problem, Grounding)";
	}

	public Answer(Problem problem, Grounding grounding, Kernel kernel) {
		if (null == problem)
			throw new IllegalArgumentException("Illegal 'problem' argument in Answer(Problem, Grounding, Kernel): " + problem);
		if (null == grounding)
			throw new IllegalArgumentException("Illegal 'grounding' argument in Answer(Problem, Grounding, Kernel): " + grounding);
		if (null == kernel)
			throw new IllegalArgumentException("Illegal 'kernel' argument in Answer(Problem, Grounding, Kernel): " + kernel);
		this.grounding = grounding;
		this.hypothesis = null;
		this.kernel = kernel;
		this.problem = problem;
		assert invariant() : "Illegal state in Answer(Problem, Grounding)";
	}

	public Answer(Problem problem, Grounding grounding, Kernel kernel, Hypothesis hypothesis) {
		if (null == problem)
			throw new IllegalArgumentException("Illegal 'problem' argument in Answer(Problem, Grounding, Kernel, Hypothesis): " + problem);
		if (null == grounding)
			throw new IllegalArgumentException("Illegal 'grounding' argument in Answer(Problem, Grounding, Kernel, Hypothesis): " + grounding);
		if (null == kernel)
			throw new IllegalArgumentException("Illegal 'kernel' argument in Answer(Problem, Grounding, Kernel, Hypothesis): " + kernel);
		if (null == hypothesis)
			throw new IllegalArgumentException("Illegal 'hypothesis' argument in Answer(Problem, Grounding, Kernel, Hypothesis): " + hypothesis);
		this.grounding = grounding;
		this.hypothesis = hypothesis;
		this.kernel = kernel;
		this.problem = problem;
		assert invariant() : "Illegal state in Answer(Problem, Grounding)";
	}

	public Collection<Integer> abdValues() {
		Collection<Integer> result = grounding.values();
		assert invariant() : "Illegal state in Answer.abdValues()";
		return result;
	}

	public Collection<Abducible> delta() {
		Collection<Abducible> result = grounding.delta();
		assert invariant() : "Illegal state in Answer.delta()";
		return result;
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
		Answer other = (Answer) obj;
		if (grounding == null) {
			if (other.grounding != null)
				return false;
		} else if (!grounding.equals(other.grounding))
			return false;
		if (hypothesis == null) {
			if (other.hypothesis != null)
				return false;
		} else if (!hypothesis.equals(other.hypothesis))
			return false;
		if (kernel == null) {
			if (other.kernel != null)
				return false;
		} else if (!kernel.equals(other.kernel))
			return false;
		if (problem == null) {
			if (other.problem != null)
				return false;
		} else if (!problem.equals(other.problem))
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
		result = prime * result + ((grounding == null) ? 0 : grounding.hashCode());
		result = prime * result + ((hypothesis == null) ? 0 : hypothesis.hashCode());
		result = prime * result + ((kernel == null) ? 0 : kernel.hashCode());
		result = prime * result + ((problem == null) ? 0 : problem.hashCode());
		return result;
	}

	public Collection<Clause> hypothesis() {
		Collection<Clause> result = null == hypothesis ? Collections.emptySet() : hypothesis.clauses();
		assert invariant() : "Illegal state in Answer.hypothesis()";
		return result;
	}

	public Collection<Integer> indValues() {
		Collection<Integer> result = null == hypothesis ? Collections.emptyList() : hypothesis.values();
		assert invariant() : "Illegal state in Answer.indValues()";
		return result;
	}

	/**
	 * Invariant check against the internal state.
	 * 
	 * @return <code>true</code> if this instance's state is consistent,
	 *         <code>false</code> otherwise
	 */
	private boolean invariant() {
		return (null != grounding && null != problem && (null == kernel || null != hypothesis));
	}

	public Collection<Clause> kernel() {
		Collection<Clause> result = null == kernel ? Collections.emptySet() : kernel.clauses();
		assert invariant() : "Illegal state in Answer.kernel()";
		return result;
	}

	public Collection<Atom> model() {
		Collection<Atom> result;
		if (problem.isDisplayAll())
			result = grounding.model();
		else {
			result = new LinkedHashSet<>();
			for (Atom candidate : grounding.model())
				if (problem.isDisplayable(candidate))
					result.add(candidate);
		}
		assert invariant() : "Illegal state in Answer.model()";
		return result;
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see java.lang.Object#toString()
	 */
	@Override
	public String toString() {
		return "Answer [\n  problem=" + problem + ",\n  grounding=" + grounding + ",\n  kernel=" + kernel + ",\n  hypothesis=" + hypothesis + "\n]";
	}

}
