/**
 * 
 */
package xhail.core.entities;

import java.util.Arrays;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.TreeMap;

import org.apache.commons.collections4.iterators.ArrayIterator;

import xhail.core.Buildable;
import xhail.core.Config;
import xhail.core.entities.Answer.Signature;

/**
 * @author stefano
 *
 */
public class Answers implements Iterable<Answer> {

	public static class Builder implements Buildable<Answers> {

		private long abduction = 0;

		private Config config;

		private long deduction = 0;

		private long induction = 0;

		private TreeMap<Signature, Set<Answer>> map = new TreeMap<>();

		public Builder(Config config) {
			if (null == config)
				throw new IllegalArgumentException("Illegal 'config' argument in Answers.Builder.Builder(Config): " + config);
			this.config = config;
		}

		public Builder addAbduction(long time) {
			if (time > 0)
				abduction += time;
			return this;
		}

		public Builder addAnswer(Answer answer) {
			if (null == answer)
				throw new IllegalArgumentException("Illegal 'answers' argument in Answers.Builder.addAnswer(Answer): " + answer);
			Signature signature = answer.getSignature();
			Set<Answer> set = map.get(signature);
			if (null == set) {
				set = new HashSet<>();
				map.put(signature, set);
			}
			set.add(answer);
			return this;
		}

		public Builder addDeduction(long time) {
			if (time > 0)
				deduction += time;
			return this;
		}

		public Builder addInduction(long time) {
			if (time > 0)
				induction += time;
			return this;
		}

		@Override
		public Answers build() {
			return new Answers(this);
		}

		public Builder clearAnswers() {
			map.clear();
			return this;
		}

		public Builder removeAnswer(Answer answer) {
			if (null == answer)
				throw new IllegalArgumentException("Illegal 'answers' argument in Answers.Builder.removeAnswer(Answer): " + answer);
			Signature signature = answer.getSignature();
			Set<Answer> set = map.get(signature);
			if (null != set)
				set.remove(answer);
			return this;
		}

	}

	private final long abduction;

	private final Answer[] answers;

	private final Config config;

	private final long deduction;

	private final long induction;

	private final Map<Signature, Set<Answer>> whole;

	private Answers(Builder builder) {
		if (null == builder)
			throw new IllegalArgumentException("Illegal 'builder' argument in Answers(Answers.Builder): " + builder);
		if (builder.map.isEmpty())
			this.answers = new Answer[0];
		else {
			Set<Answer> set = builder.map.get(builder.map.firstKey());
			this.answers = set.toArray(new Answer[set.size()]);
		}
		this.abduction = builder.abduction;
		this.deduction = builder.deduction;
		this.induction = builder.induction;
		this.whole = new TreeMap<>(builder.map);
		this.config = builder.config;
	}

	public final int count() {
		int result = 0;
		for (Set<Answer> part : whole.values())
			if (null != part)
				result += part.size();
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
		Answers other = (Answers) obj;
		if (!Arrays.equals(answers, other.answers))
			return false;
		return true;
	}

	public final long getAbduction() {
		return abduction;
	}

	public Answer getAnswer(int index) {
		if (index < 0 || index >= whole.size())
			throw new IndexOutOfBoundsException("Illegal 'index' argument in Answers.getAnswer(int): " + index);
		return answers[index];
	}

	public Answer[] getAnswers() {
		return answers;
	}

	public final Config getConfig() {
		return config;
	}

	public final long getDeduction() {
		return deduction;
	}

	public final long getInduction() {
		return induction;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + Arrays.hashCode(answers);
		return result;
	}

	public final boolean isEmpty() {
		return (0 == this.answers.length);
	}

	@Override
	public Iterator<Answer> iterator() {
		return new ArrayIterator<>(answers);
	}

	public final int size() {
		return answers.length;
	}
	
	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		int i = 1;
		for (Answer answer : answers) {
			builder.append("Answer " + i + ":\n");
			for (String line : answer.toString().split("\n"))
				builder.append("  " + line + "\n");
			builder.append("\n");
			i += 1;
		}
		return builder.toString();
	}

}
