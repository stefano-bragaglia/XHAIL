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

	public static class Signature implements Comparable<Signature> {

		private final int clauses;

		private final int examples;

		private final int literals;

		private final int phases;

		private final int uncovers;

		public Signature(int clauses, int examples, int literals, int phases, int uncovers) {
			if (clauses < 0)
				throw new IllegalArgumentException("Illegal 'hypothesisClauses' argument in Answer.Signature(int, int, int, int, int): " + clauses);
			if (examples < 0)
				throw new IllegalArgumentException("Illegal 'examples' argument in Answer.Signature(int, int, int, int, int): " + examples);
			if (literals < 0)
				throw new IllegalArgumentException("Illegal 'literals' argument in Answer.Signature(int, int, int, int, int): " + literals);
			if (phases < 0)
				throw new IllegalArgumentException("Illegal 'phases' argument in Answer.Signature(int, int, int, int, int): " + phases);
			if (uncovers < 0)
				throw new IllegalArgumentException("Illegal 'uncovers' argument in Answer.Signature(int, int, int, int, int): " + uncovers);
			this.clauses = clauses;
			this.examples = examples;
			this.literals = literals;
			this.phases = phases;
			this.uncovers = uncovers;
		}

		@Override
		public int compareTo(Signature o) {
			// TODO
			if (o == null)
				throw new IllegalArgumentException("Illegal 'o' argument in Answer.compareTo(Signature): " + uncovers);
			int result = uncovers - o.uncovers;
			if (0 == result)
				result = clauses - o.clauses;
			// if (0 == result)
			// result = literals - o.literals;
			// if (0 == result)
			// result = o.phases - phases;
			return result;
		}

		@Override
		public boolean equals(Object obj) {
			if (this == obj)
				return true;
			if (obj == null)
				return false;
			if (getClass() != obj.getClass())
				return false;
			Signature other = (Signature) obj;
			if (clauses != other.clauses)
				return false;
			if (uncovers != other.uncovers)
				return false;
			return true;
		}

		public final int getClauses() {
			return clauses;
		}

		public final int getExamples() {
			return examples;
		}

		public final int getLiterals() {
			return literals;
		}

		public final int getPhases() {
			return phases;
		}

		public final int getUncovers() {
			return uncovers;
		}

		@Override
		public int hashCode() {
			final int prime = 31;
			int result = 1;
			result = prime * result + clauses;
			result = prime * result + uncovers;
			return result;
		}

		@Override
		public String toString() {
			return clauses + " " + examples + " " + literals + " " + phases + " " + uncovers;
		}

	}

	private final Collection<Literal> cover;

	private final Collection<Atom> delta;

	private final Grounding grounding;

	private final Hypothesis hypothesis;

	private final Collection<Clause> hypothesisClauses;

	private final Collection<Clause> kernel;

	private final Collection<Atom> model;

	private final Signature signature;

	private Answer(Builder builder) {
		if (null == builder)
			throw new IllegalArgumentException("Illegal 'builder' argument in Answer(Answer.Builder): " + builder);
		this.grounding = builder.grounding;
		this.hypothesis = builder.hypothesis;

		this.cover = null == builder.hypothesis ? grounding.getCover() : hypothesis.getCover();
		this.delta = grounding.getDelta();
		this.hypothesisClauses = null == builder.hypothesis? Collections.emptySet(): hypothesis.explains();
		this.kernel = grounding.getKernel();
		this.model = null == builder.hypothesis ? grounding.getModel() : hypothesis.getModel();

		int examples = this.grounding.getProblem().getExamples().size();
		this.signature = null == builder.hypothesis ? //
		new Signature(0, examples, 0, 2, grounding.getCover().size()) //
				: new Signature(getHypothesis().size(), examples, hypothesis.getLiterals().size(), 3, hypothesis.getCover().size());
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
		if (cover == null) {
			if (other.cover != null)
				return false;
		} else if (!cover.equals(other.cover))
			return false;
		if (delta == null) {
			if (other.delta != null)
				return false;
		} else if (!delta.equals(other.delta))
			return false;
		if (hypothesisClauses == null) {
			if (other.hypothesisClauses != null)
				return false;
		} else if (!hypothesisClauses.equals(other.hypothesisClauses))
			return false;
		if (kernel == null) {
			if (other.kernel != null)
				return false;
		} else if (!kernel.equals(other.kernel))
			return false;
		if (model == null) {
			if (other.model != null)
				return false;
		} else if (!model.equals(other.model))
			return false;
		return true;
	}

	public Collection<Literal> getCover() {
		return cover;
	}

	public Collection<Atom> getDelta() {
		return delta;
	}

	public Grounding getGrounding() {
		return grounding;
	}

	public Collection<Clause> getHypothesis() {
		return hypothesisClauses;
	}

	public Collection<Clause> getKernel() {
		return kernel;
	}

	public Collection<Atom> getModel() {
		return model;
	}

	public Problem getProblem() {
		return grounding.getProblem();
	}

	public Signature getSignature() {
		return signature;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((cover == null) ? 0 : cover.hashCode());
		result = prime * result + ((delta == null) ? 0 : delta.hashCode());
		result = prime * result + ((hypothesisClauses == null) ? 0 : hypothesisClauses.hashCode());
		result = prime * result + ((kernel == null) ? 0 : kernel.hashCode());
		result = prime * result + ((model == null) ? 0 : model.hashCode());
		return result;
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
		for (String line : Utils.listClauses("Hypothesis", getHypothesis()))
			builder.append(line + "\n");
		for (String line : Utils.listLiterals("Uncovered example", getCover()))
			builder.append(line + "\n");
		builder.append("Signature: " + getSignature().toString());
		return builder.toString();
	}

}
