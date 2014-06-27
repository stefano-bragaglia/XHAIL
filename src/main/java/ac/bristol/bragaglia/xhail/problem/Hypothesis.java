/**
 * 
 */
package ac.bristol.bragaglia.xhail.problem;

import java.util.AbstractMap.SimpleEntry;
import java.util.Collection;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
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
public class Hypothesis {

	private Map<Integer, Map<Integer, Map<Integer, Literal>>> bodies;

	private Map<Integer, List<Integer>> values;

	// private Map<Integer, Map<Integer, Literal>> bodies = new TreeMap<>();

	private Map<Integer, Set<Clause>> clauses;

	// private Set<Clause> clauses;

	private int count;

	// private Map<Integer, Clause> heads = new TreeMap<>();

	private Map<Integer, Map<Integer, Clause>> heads;

	private Kernel kernel;

	private boolean modified;

	public Hypothesis(Kernel kernel, Map<List<Integer>, Set<Set<Atom>>> hypothesis) {
		if (null == kernel)
			throw new IllegalArgumentException("Illegal 'kernel' argument in Hypothesis(Kernel, Map<List<Integer>, Set<Set<Atom>>>): " + kernel);
		if (null == hypothesis)
			throw new IllegalArgumentException("Illegal 'kernel' argument in Hypothesis(Kernel, Map<List<Integer>, Set<Set<Atom>>>): " + kernel);
		this.bodies = new TreeMap<>();
		this.clauses = new TreeMap<>();
		this.count = 0;
		this.heads = new TreeMap<>();
		this.kernel = kernel;
		this.modified = false;
		this.values = new TreeMap<>();
		this.setup(hypothesis);
		assert invariant() : "Illegal state in Hypothesis(Kernel, Collection<Set<Atom>>)";
	}

	public boolean addUse(int model, int clause, int literal, List<Integer> values) {
		if (model < 0)
			throw new IllegalArgumentException("Illegal 'model' argument in Hypothesis.addUse(int, int, int, List<Integer>): " + model);
		if (clause < 1)
			throw new IllegalArgumentException("Illegal 'clause' argument in Hypothesis.addUse(int, int, int, List<Integer>): " + clause);
		if (literal < 0)
			throw new IllegalArgumentException("Illegal 'literal' argument in Hypothesis.addUse(int, int, int, List<Integer>): " + literal);
		if (null == values)
			throw new IllegalArgumentException("Illegal 'values' argument in Hypothesis.addUse(int, int, int, List<Integer>): " + values);
		boolean result = false;
		if (model > count)
			count = model;
		this.values.put(model, values);
		Map<Integer, Clause> headmap = heads.get(model);
		if (null == headmap) {
			headmap = new TreeMap<>();
			heads.put(model, headmap);
		}
		Map<Integer, Map<Integer, Literal>> bodymap = bodies.get(model);
		if (null == bodymap) {
			bodymap = new TreeMap<>();
			bodies.put(model, bodymap);
		}
		if (0 == literal) {
			Clause candidate = new Clause(kernel.get(clause));
			Clause previous = headmap.put(clause, candidate);
			result = (null == previous || !candidate.equals(previous));
		} else {
			Map<Integer, Literal> map = bodymap.get(clause);
			if (null == map) {
				map = new TreeMap<>();
				bodymap.put(clause, map);
			}
			Literal candidate = kernel.get(clause, literal);
			Literal previous = map.put(literal, candidate);
			result = (null == previous || !candidate.equals(previous));
		}
		modified |= result;
		assert invariant() : "Illegal state in Hypothesis.addUse(int, int, int)";
		return result;
	}

	public Collection<Entry<Set<Clause>, List<Integer>>> clauses() {
		if (modified) {
			for (int model = 0; model < count; model++) {
				Set<Clause> set = clauses.get(model);
				if (null == set) {
					set = new TreeSet<>();
					clauses.put(model, set);
				}
				Map<Integer, Clause> headmap = heads.get(model);
				if (null == headmap) {
					headmap = new TreeMap<>();
					heads.put(model, headmap);
				}
				Map<Integer, Map<Integer, Literal>> bodymap = bodies.get(model);
				if (null == bodymap) {
					bodymap = new TreeMap<>();
					bodies.put(model, bodymap);
				}
				set.clear();
				for (int c : headmap.keySet()) {
					Clause clause = headmap.get(c);
					if (bodymap.containsKey(c))
						for (Literal literal : bodymap.get(c).values())
							clause.append(literal);
					set.add(clause);
				}
			}
			modified = false;
		}
		Set<Entry<Set<Clause>, List<Integer>>> result = new LinkedHashSet<>();
		for (int model : clauses.keySet())
			result.add(new SimpleEntry<Set<Clause>, List<Integer>>(clauses.get(model), values.get(model)));
		assert invariant() : "Illegal state in Hypothesis.c()";
		return result;
	}

	// public Collection<Set<Clause>> clauses() {
	// if (modified) {
	// for (int model = 0; model < count; model++) {
	// Set<Clause> set = clauses.get(model);
	// if (null == set) {
	// set = new TreeSet<>();
	// clauses.put(model, set);
	// }
	// Map<Integer, Clause> headmap = heads.get(model);
	// if (null == headmap) {
	// headmap = new TreeMap<>();
	// heads.put(model, headmap);
	// }
	// Map<Integer, Map<Integer, Literal>> bodymap = bodies.get(model);
	// if (null == bodymap) {
	// bodymap = new TreeMap<>();
	// bodies.put(model, bodymap);
	// }
	// set.clear();
	// for (int c : headmap.keySet()) {
	// Clause clause = headmap.get(c);
	// if (bodymap.containsKey(c))
	// for (Literal literal : bodymap.get(c).values())
	// clause.append(literal);
	// set.add(clause);
	// }
	// }
	// modified = false;
	// }
	// Collection<Set<Clause>> result = clauses.values();
	// assert invariant() : "Illegal state in Hypothesis.clauses()";
	// return result;
	// }

	public Collection<Clause> clauses(int model) {
		if (model < 0 || model >= count)
			throw new IndexOutOfBoundsException("Illegal 'model' argument in Hypothesis.clauses(int): " + model);
		clauses();
		Set<Clause> result = clauses.get(model);
		if (null == result) {
			result = new TreeSet<>();
			clauses.put(model, result);
		}
		assert invariant() : "Illegal state in Hypothesis.clauses(int)";
		return result;
	}

	public int count() {
		assert invariant() : "Illegal state in Hypothesis.count()";
		return count;
	}

	private boolean invariant() {
		return (null != bodies && null != clauses && null != heads && null != kernel && null != values);
	}

	public boolean isGeneralizable() {
		boolean result = true;
		assert invariant() : "Illegal state in Hypothesis.isGeneralizable()";
		return result;
	}

	public boolean isModified() {
		assert invariant() : "Illegal state in Hypothesis.isModified()";
		return modified;
	}

	private void setup(Map<List<Integer>, Set<Set<Atom>>> hypothesis) {
		if (null == hypothesis)
			throw new IllegalArgumentException("Illegal 'hypothesis' argument in Hypothesis.populate(Map<List<Integer>, Set<Set<Atom>>>): " + hypothesis);
		heads.clear();
		bodies.clear();
		count = 0;
		for (List<Integer> values : hypothesis.keySet())
			for (Set<Atom> set : hypothesis.get(values)) {
				for (Atom fact : set)
					if (Kernel.UCL.equals(fact.name()) && 2 == fact.arity())
						this.addUse(count, Integer.parseInt(fact.get(0).toString()), Integer.parseInt(fact.get(1).toString()), values);
				count += 1;
			}
		// Iterator<Set<Atom>> iterator = hypothesis.iterator();
		// if (iterator.hasNext()) {
		// count = 0;
		// while (iterator.hasNext()) {
		// for (Atom fact : iterator.next())
		// if (fact.name().equals(Kernel.UCL) && 2 == fact.arity())
		// this.addUse(count, Integer.parseInt(fact.get(0).toString()),
		// Integer.parseInt(fact.get(1).toString()));
		// count += 1;
		// }
		// }
		assert invariant() : "Illegal state in Hypothesis.populate(Map<List<Integer>, Set<Set<Atom>>>)";
	}

}
