/**
 * 
 */
package ac.bristol.bragaglia.xhail.problem;

import java.util.Collection;
import java.util.Iterator;
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
public class Hypothesis {

	private Map<Integer, Map<Integer, Map<Integer, Literal>>> bodies;

	// private Map<Integer, Map<Integer, Literal>> bodies = new TreeMap<>();

	private Map<Integer, Set<Clause>> clauses;

	// private Set<Clause> clauses;

	private int count;

	// private Map<Integer, Clause> heads = new TreeMap<>();

	private Map<Integer, Map<Integer, Clause>> heads;

	private Kernel kernel;

	private boolean modified;

	public Hypothesis(Kernel kernel, Collection<Set<Atom>> hypothesis) {
		if (null == kernel)
			throw new IllegalArgumentException("Illegal 'kernel' argument in Hypothesis(Kernel, Collection<Set<Atom>>): " + kernel);
		if (null == hypothesis)
			throw new IllegalArgumentException("Illegal 'kernel' argument in Hypothesis(Kernel, Collection<Set<Atom>>): " + kernel);
		this.bodies = new TreeMap<>();
		this.clauses = new TreeMap<>();
		this.count = 0;
		this.heads = new TreeMap<>();
		this.kernel = kernel;
		this.modified = false;
		this.setup(hypothesis);
		assert invariant() : "Illegal state in Hypothesis(Kernel, Collection<Set<Atom>>)";
	}

	public boolean addUse(int model, int clause, int literal) {
		if (model < 0)
			throw new IllegalArgumentException("Illegal 'model' argument in Hypothesis.addUse(int, int, int): " + model);
		if (clause < 1)
			throw new IllegalArgumentException("Illegal 'clause' argument in Hypothesis.addUse(int, int, int): " + clause);
		if (literal < 0)
			throw new IllegalArgumentException("Illegal 'literal' argument in Hypothesis.addUse(int, int, int): " + literal);
		boolean result = false;
		if (model > count)
			count = model;
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
		assert invariant() : "Illegal state in Hypothesis.addUse(int, int)";
		return result;
	}

	public Collection<Set<Clause>> clauses() {
		if (modified) {
			for (int m = 0; m < count; m++) {
				Set<Clause> set = clauses.get(m);
				if (null == set) {
					set = new TreeSet<>();
					clauses.put(m, set);
				}
				Map<Integer, Clause> headmap = heads.get(m);
				if (null == headmap) {
					headmap = new TreeMap<>();
					heads.put(m, headmap);
				}
				Map<Integer, Map<Integer, Literal>> bodymap = bodies.get(m);
				if (null == bodymap) {
					bodymap = new TreeMap<>();
					bodies.put(m, bodymap);
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
		Collection<Set<Clause>> result = clauses.values();
		assert invariant() : "Illegal state in Hypothesis.clauses()";
		return result;
	}

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
		return (null != bodies && null != clauses && null != heads && null != kernel);
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

	private void setup(Collection<Set<Atom>> hypothesis) {
		if (null == hypothesis)
			throw new IllegalArgumentException("Illegal 'hypothesis' argument in Hypothesis.populate(Collection<Set<Atom>>): " + hypothesis);
		heads.clear();
		bodies.clear();
		Iterator<Set<Atom>> iterator = hypothesis.iterator();
		if (iterator.hasNext()) {
			count = 0;
			while (iterator.hasNext()) {
				for (Atom fact : iterator.next())
					if (fact.name().equals("use_clause_literal") && 2 == fact.arity())
						this.addUse(count, Integer.parseInt(fact.get(0).toString()), Integer.parseInt(fact.get(1).toString()));
				count += 1;
			}
		}
		assert invariant() : "Illegal state in Hypothesis.populate(Collection<Set<Atom>>)";
	}

}
