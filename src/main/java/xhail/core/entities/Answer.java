/**
 * 
 */
package xhail.core.entities;

import xhail.core.Buildable;
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

	public final Literal[] getCovered() {
		if (null == this.hypothesis)
			return grounding.getCovered();
		return hypothesis.getCovered();
	}

	public final Atom[] getDelta() {
		return grounding.getDelta();
	}

	public final String[] getDomains() {
		return grounding.getDomains();
	}

	public Grounding getGrounding() {
		return grounding;
	}

	public final Clause[] getHypotheses() {
		if (null == hypothesis)
			return new Clause[0];
		return hypothesis.getHypotheses();
	}

	public final Hypothesis getHypothesis() {
		return hypothesis;
	}

	public final Clause[] getKernel() {
		return grounding.getKernel();
	}

	public final Atom[] getModel() {
		if (null == hypothesis)
			return grounding.getModel();
		return hypothesis.getModel();
	}

	public Problem getProblem() {
		return grounding.getProblem();
	}

	public final Literal[] getUncovered() {
		if (null == hypothesis)
			return grounding.getUncovered();
		return hypothesis.getUncovered();
	}

	public final boolean hasBackground() {
		return grounding.hasBackground();
	}

	public final boolean hasCovered() {
		if (null == hypothesis)
			return grounding.hasCovered();
		return hypothesis.hasCovered();
	}

	public final boolean hasDelta() {
		return grounding.hasDelta();
	}

	public final boolean hasDisplays() {
		return grounding.hasDisplays();
	}

	public final boolean hasDomains() {
		return grounding.getDomains().length > 0;
	}

	public final boolean hasExamples() {
		return grounding.hasExamples();
	}

	public final boolean hasGeneralisation() {
		return grounding.hasGeneralisation();
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((grounding == null) ? 0 : grounding.hashCode());
		result = prime * result + ((hypothesis == null) ? 0 : hypothesis.hashCode());
		return result;
	}

	public final boolean hasHypotheses() {
		if (null == hypothesis)
			return false;
		return hypothesis.hasHypotheses();
	}

	public final boolean hasKernel() {
		return grounding.hasKernel();
	}

	public final boolean hasModel() {
		if (null == hypothesis)
			return grounding.hasModel();
		return hypothesis.hasModel();
	}

	public final boolean hasModes() {
		return grounding.hasModes();
	}

	public final boolean hasUncovered() {
		if (null == hypothesis)
			return grounding.hasUncovered();
		return hypothesis.hasUncovered();
	}

	public final boolean isMeaningful() {
		return null != hypothesis && hypothesis.getHypotheses().length > 0;
	}

	@Override
	public String toString() {
		return "Answer [\n  grounding=" + grounding + ",\n  hypothesis=" + hypothesis + "\n]";
	}

}
