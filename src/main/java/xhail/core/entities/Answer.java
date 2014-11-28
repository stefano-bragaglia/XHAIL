/**
 * 
 */
package xhail.core.entities;

import java.util.Collection;
import java.util.Collections;

import xhail.core.Buildable;
import xhail.core.Utils;
import xhail.core.terms.Atom;
import xhail.core.terms.Clause;
import xhail.core.terms.Literal;

/**
 * @author stefano
 *
 */
public class Answer {

	public static class Builder implements Buildable<Answer> {

		private Grounding grounding;

		private Hypothesis hypothesis = null;

		private Builder(Builder builder) {
			if (null == builder)
				throw new IllegalArgumentException("Illegal 'builder' argument in Answer.Builder(Atom.Builder): " + builder);
			this.grounding = builder.grounding;
			this.hypothesis = builder.hypothesis;
		}

		public Builder(Grounding grounding) {
			if (null == grounding)
				throw new IllegalArgumentException("Illegal 'grounding' argument in Answer.Builder(Grounding): " + grounding);
			this.grounding = grounding;
		}

		@Override
		public Answer build() {
			return new Answer(this);
		}

		public Builder clone() {
			return new Builder(this);
		}

		public Builder setHypothesis(Hypothesis hypothesis) {
			if (null == hypothesis)
				throw new IllegalArgumentException("Illegal 'hypothesis' argument in Answer.Builder.setHypothesis(Hypothesis): " + hypothesis);
			this.hypothesis = hypothesis;
			return this;
		}

	}

	private final Grounding grounding;

	private final Hypothesis hypothesis;

	private Answer(Builder builder) {
		if (null == builder)
			throw new IllegalArgumentException("Illegal 'builder' argument in Answer(Answer.Builder): " + builder);
		this.grounding = builder.grounding;
		this.hypothesis = builder.hypothesis;
	}

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
		return true;
	}

	public Collection<Literal> getCover() {
		if (null == this.hypothesis)
			return grounding.getCovered();
		return hypothesis.getCovered();
	}

	public Collection<Atom> getDelta() {
		return grounding.getDelta();
	}

	public Grounding getGrounding() {
		return grounding;
	}

	public Collection<Clause> getHypotheses() {
		if (null == hypothesis)
			return Collections.emptySet();
		return hypothesis.getHypotheses();
	}

	public final Hypothesis getHypothesis() {
		return hypothesis;
	}

	public Collection<Clause> getKernel() {
		return grounding.getKernel();
	}

	public Collection<Atom> getModel() {
		if (null == hypothesis)
			return grounding.getModel();
		return hypothesis.getModel();
	}

	public Problem getProblem() {
		return grounding.getProblem();
	}

	public Collection<Literal> getUncover() {
		if (null == hypothesis)
			return grounding.getUncovered();
		return hypothesis.getUncovered();
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((grounding == null) ? 0 : grounding.hashCode());
		result = prime * result + ((hypothesis == null) ? 0 : hypothesis.hashCode());
		return result;
	}

	/**
	 * @return
	 */
	public final boolean needsModel() {
		return !grounding.getProblem().getDisplays().isEmpty();
	}

	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		for (String line : Utils.listAtoms("Model", getModel()))
			builder.append(line + "\n");
		for (String line : Utils.listAtoms("Delta", getDelta()))
			builder.append(line + "\n");
		for (String line : Utils.listClauses("Kernel", getKernel()))
			builder.append(line + "\n");
		for (String line : Utils.listClauses("Hypothesis", getHypotheses()))
			builder.append(line + "\n");
		for (String line : Utils.listLiterals("Uncovered example", getCover()))
			builder.append(line + "\n");
		return builder.toString();
	}

}
