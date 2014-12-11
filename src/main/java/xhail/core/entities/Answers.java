/**
 * 
 */
package xhail.core.entities;

import java.util.Arrays;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

import org.apache.commons.collections4.iterators.ArrayIterator;

import xhail.core.Buildable;
import xhail.core.Config;
import xhail.core.Dialler;

/**
 * @author stefano
 *
 */
public class Answers implements Iterable<Answer> {

	public static class Builder implements Buildable<Answers> {

		private Set<Answer> answers = new HashSet<>();

		private Config config;

		private int count = 0;

		private Values values = null;

		public Builder(Config config) {
			if (null == config)
				throw new IllegalArgumentException("Illegal 'config' argument in Answers.Builder.Builder(Config): " + config);
			this.config = config;
		}
		
		@Override
		public Answers build() {
			return new Answers(this);
		}

		public Builder clear() {
			first = -1L;
			this.answers.clear();
			this.count = 0;
			this.values = null;
			return this;
		}

		public final boolean isMeaningful() {
			for (Answer answer : answers)
				if (answer.isMeaningful())
					return true;
			return false;
		}

		public Builder put(Values values, Answer answer) {
			if (null == values)
				throw new IllegalArgumentException("Illegal 'values' argument in Answers.Builder.putAnswer(Values, Answer): " + values);
			if (null == answer)
				throw new IllegalArgumentException("Illegal 'answer' argument in Answers.Builder.putAnswer(Values, Answer): " + answer);
			if (first < 0L)
				first = System.nanoTime();
			int order = null == this.values ? -1 : values.compareTo(this.values);
			if (order < 0) {
				this.answers.clear();
				this.values = values;
			}
			if (order <= 0)
				this.answers.add(answer);
			count += 1;
			return this;
		}

		public Builder remove(Values values, Answer answer) {
			if (null == values)
				throw new IllegalArgumentException("Illegal 'values' argument in Answers.Builder.removeAnswer(Values, Answer): " + values);
			if (null == answer)
				throw new IllegalArgumentException("Illegal 'answer' argument in Answers.Builder.removeAnswer(Values, Answer): " + answer);
			if (null != this.values && 0 == values.compareTo(this.values))
				if (this.answers.remove(answer))
					count -= 1;
			return this;
		}

		public final int size() {
			return answers.size();
		}

	}

	private static long abduction = 0L;
	private static long deduction = 0L;
	private static long first = -1L;
	private static long induction = 0L;
	private static long loading = -1L;
	private static final double NORMALIZER = 1_000_000_000.0;

	private static long start = -1L;

	public static final double getAbduction() {
		return abduction / NORMALIZER;
	}

	public static final double getDeduction() {
		return deduction / NORMALIZER;
	}

	public static final double getFirst() {
		if (first < 0L || start < 0L)
			return 0L;
		return (first - start) / NORMALIZER;
	}

	public static final double getInduction() {
		return induction / NORMALIZER;
	}

	public static final double getLoading() {
		if (loading < 0L || start < 0L)
			return 0L;
		return (loading - start) / NORMALIZER;
	}

	public static final double getNow() {
		if (start < 0L)
			return 0L;
		return (System.nanoTime() - start) / NORMALIZER;
	}

	public static final void loaded() {
		if (loading < 0L)
			loading = System.nanoTime();
	}

	public static final void started() {
		if (start < 0L)
			start = System.nanoTime();
	}

	public static Map.Entry<Values, Collection<Collection<String>>> timeAbduction(int iter, Dialler dialer) {
		if (iter < 0)
			throw new IllegalArgumentException("Illegal 'iter' argument in Answers.timeAbduction(int, Dialer): " + iter);
		if (null == dialer)
			throw new IllegalArgumentException("Illegal 'dialer' argument in Answers.timeAbduction(int, Dialer): " + dialer);
		long time = System.nanoTime();
		Map.Entry<Values, Collection<Collection<String>>> result = dialer.execute(iter);
		abduction += (System.nanoTime() - time);
		return result;
	}

	public static Hypothesis timeDeduction(Grounding grounding, Collection<String> output) {
		if (null == grounding)
			throw new IllegalArgumentException("Illegal 'grounding' argument in Answers.timeDeduction(Grounding, Collection<String>): " + grounding);
		if (null == output)
			throw new IllegalArgumentException("Illegal 'output' argument in Answers.timeDeduction(Grounding, Collection<String>): " + output);
		long time = System.nanoTime();
		Hypothesis result = new Hypothesis.Builder(grounding).parse(output).build();
		result.getHypotheses();
		deduction += (System.nanoTime() - time);
		return result;
	}

	public static Grounding timeDeduction(Problem problem, Collection<String> output) {
		if (null == problem)
			throw new IllegalArgumentException("Illegal 'problem' argument in Answers.timeDeduction(Problem, Collection<String>): " + problem);
		if (null == output)
			throw new IllegalArgumentException("Illegal 'output' argument in Answers.timeDeduction(Problem, Collection<String>): " + output);
		long time = System.nanoTime();
		Grounding result = new Grounding.Builder(problem).parse(output).build();
		result.getGeneralisation();
		deduction += (System.nanoTime() - time);
		return result;
	}

	public static Map.Entry<Values, Collection<Collection<String>>> timeInduction(int iter, Dialler dialer) {
		if (iter < 0)
			throw new IllegalArgumentException("Illegal 'iter' argument in Answers.timeInduction(int, Dialer): " + iter);
		if (null == dialer)
			throw new IllegalArgumentException("Illegal 'dialer' argument in Answers.timeInduction(Dialer): " + dialer);
		long time = System.nanoTime();
		Map.Entry<Values, Collection<Collection<String>>> result = dialer.execute(iter);
		induction += (System.nanoTime() - time);
		return result;
	}

	private final Answer[] answers;

	private final Config config;

	private final int count;

	private final Values values;

	private Answers(Builder builder) {
		if (null == builder)
			throw new IllegalArgumentException("Illegal 'builder' argument in Answers(Answers.Builder): " + builder);
		this.answers = builder.answers.toArray(new Answer[builder.answers.size()]);
		this.config = builder.config;
		this.count = builder.count;
		this.values = builder.values;
	}

	public final int count() {
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
		Answers other = (Answers) obj;
		if (!Arrays.equals(answers, other.answers))
			return false;
		if (values == null) {
			if (other.values != null)
				return false;
		} else if (!values.equals(other.values))
			return false;
		return true;
	}

	public final Answer getAnswer(int index) {
		if (index < 0 || index >= answers.length)
			throw new IndexOutOfBoundsException("Illegal 'index' argument in Answers.getAnswer(int): " + index);
		return answers[index];
	}

	public final Answer[] getAnswers() {
		return answers;
	}

	public final Config getConfig() {
		return config;
	}

	public final Values getValues() {
		return values;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + Arrays.hashCode(answers);
		result = prime * result + ((values == null) ? 0 : values.hashCode());
		return result;
	}

	public final boolean isEmpty() {
		return 0 == answers.length;
	}

	@Override
	public Iterator<Answer> iterator() {
		return new ArrayIterator<>(answers);
	}

	public final int size() {
		return answers.length;
	}

}
