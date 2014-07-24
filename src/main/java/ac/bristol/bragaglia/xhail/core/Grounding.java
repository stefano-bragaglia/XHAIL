/**
 * 
 */
package ac.bristol.bragaglia.xhail.core;

import java.util.AbstractMap.SimpleEntry;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import java.util.Stack;
import java.util.TreeMap;
import java.util.TreeSet;

import ac.bristol.bragaglia.xhail.core.Problem.ExampleData;
import ac.bristol.bragaglia.xhail.core.Problem.ModeBodyData;
import ac.bristol.bragaglia.xhail.predicates.Abducible;
import ac.bristol.bragaglia.xhail.predicates.Atom;
import ac.bristol.bragaglia.xhail.predicates.Builder;
import ac.bristol.bragaglia.xhail.predicates.Clause;
import ac.bristol.bragaglia.xhail.predicates.Literal;

/**
 * A class to hold the grounding of an xhail program or a gringo/clasp model.
 * Basically contains a model (a collection of facts) and a delta (a collection
 * of abducibles). Contains a reference to a set of integer values that are the
 * optimal result after the optimisation process.
 * 
 * @author stefano
 *
 */
public class Grounding extends Modifiable {

	public static Collection<Grounding> loadAll(Problem problem, Map<List<Integer>, Set<Set<Atom>>> answers) {
		if (null == answers || answers.size() > 1)
			throw new IllegalArgumentException("Illegal 'answers' argument in Grounding.loadAll(Map<List<Integer>, Set<Set<Atom>>>): " + answers);
		Set<Grounding> result = new LinkedHashSet<>();
		for (List<Integer> values : answers.keySet())
			for (Set<Atom> answer : answers.get(values)) {
				Grounding grounding = new Grounding(problem, values);
				for (Atom fact : answer)
					grounding.addFact(fact);
				// Add a grounding only if not included in any other
				// and replace others with this one if they are included in it
				result.add(grounding);
				// if (!grounding.isIncluded(result)) {
				// Set<Grounding> temp = new LinkedHashSet<>();
				// for (Grounding ground : result)
				// if (!ground.isIncluded(grounding))
				// temp.add(ground);
				// temp.add(grounding);
				// result = temp;
				// }
			}
		return result;
	}

	public boolean isIncluded(Collection<Grounding> groundings) {
		if (null == groundings)
			throw new IllegalArgumentException("Illegal 'groundings' argument in Grounding.isIncluded(Collection<Grounding>): " + groundings);
		boolean result = false;
		Iterator<Grounding> iterator = groundings.iterator();
		while (!result && iterator.hasNext())
			result = isIncluded(iterator.next());
		assert invariant() : "Illegal state in Grounding.isIncluded(Collection<Groundings>)";
		return result;
	}

	public boolean isIncluded(Grounding grounding) {
		if (null == grounding)
			throw new IllegalArgumentException("Illegal 'grounding' argument in Grounding.isIncluded(Grounding): " + grounding);
		boolean result = problem.equals(grounding.problem) && values.equals(grounding.values);
		if (result) {
			Iterator<Atom> modelIter = model.iterator();
			while (result && modelIter.hasNext())
				result = grounding.model.contains(modelIter.next());
			Iterator<Integer> intIter = delta.keySet().iterator();
			while (result && intIter.hasNext()) {
				int priority = intIter.next();
				Iterator<Abducible> deltaIter = delta.get(priority).iterator();
				while (result && deltaIter.hasNext())
					result = grounding.delta.containsKey(priority) && grounding.delta.get(priority).contains(deltaIter.next());
			}
		}
		assert invariant() : "Illegal state in Grounding.isIncluded(Grounding)";
		return result;
	}

	private Map<Integer, Set<Abducible>> delta;

	private Set<Clause> explanations;

	private Set<Atom> model;

	private Problem problem;

	private Memory types;

	// NB: can be empty if problem is only satisfiable.
	private List<Integer> values;

	public Grounding(Problem problem, List<Integer> values) {
		super();
		if (null == problem)
			throw new IllegalArgumentException("Illegal 'problem' argument in Grounding(Problem, List<Integer>): " + problem);
		if (null == values)
			throw new IllegalArgumentException("Illegal 'values' argument in Grounding(Problem, List<Integer>): " + values);
		this.delta = new TreeMap<>();
		this.model = new TreeSet<>();
		this.problem = problem;
		this.values = new ArrayList<>(values);
		this.update();
		assert invariant() : "Illegal state in Grounding(List<Integer>)";
	}

	public void addFact(Atom fact) {
		if (null == fact)
			throw new IllegalArgumentException("Illegal 'fact' argument in Grounding.addFact(Atom): " + fact);
		String name = fact.name();
		if (name.startsWith(Problem.TAG_ABDUCE)) {
			String[] parts = name.split("_");
			name = parts[1];
			for (int i = 2; i <= parts.length - 3; i++)
				name += "_" + parts[i];
			int weight = Integer.parseInt(parts[parts.length - 2]);
			int priority = Integer.parseInt(parts[parts.length - 1]);
			Set<Abducible> group = delta.get(priority);
			if (null == group) {
				group = new TreeSet<>();
				delta.put(priority, group);
			}
			group.add(new Abducible(name, fact.terms(), weight, priority));
		} else
			model.add(fact);
		assert invariant() : "Illegal state in Grounding.addFact(Atom)";
	}

	public Collection<Abducible> delta() {
		Set<Abducible> result = new TreeSet<>();
		for (Collection<Abducible> collection : delta.values())
			result.addAll(collection);
		assert invariant() : "Illegal state in Grounding.delta()";
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
		if (!super.equals(obj))
			return false;
		if (getClass() != obj.getClass())
			return false;
		Grounding other = (Grounding) obj;
		if (delta == null) {
			if (other.delta != null)
				return false;
		} else if (!delta.equals(other.delta))
			return false;
		if (explanations == null) {
			if (other.explanations != null)
				return false;
		} else if (!explanations.equals(other.explanations))
			return false;
		if (model == null) {
			if (other.model != null)
				return false;
		} else if (!model.equals(other.model))
			return false;
		if (problem == null) {
			if (other.problem != null)
				return false;
		} else if (!problem.equals(other.problem))
			return false;
		if (types == null) {
			if (other.types != null)
				return false;
		} else if (!types.equals(other.types))
			return false;
		if (values == null) {
			if (other.values != null)
				return false;
		} else if (!values.equals(other.values))
			return false;
		return true;
	}

	public Collection<Clause> explain() {
		if (null == explanations || isModified()) {
			this.explanations = new LinkedHashSet<>();
			this.types = new Memory();
			for (Atom fact : model)
				types.populate(fact, problem.types());
			for (int priority : delta.keySet())
				for (Abducible abducible : delta.get(priority)) {
					Atom head = abducible.asHead();
					Memory vars = abducible.vars();
					Memory history = new Memory(vars);
					if (model.contains(head)) {
						Set<String> found = new LinkedHashSet<>();
						Clause clause = new Clause(Atom.annotate(0, head, abducible, abducible.getWeight(), abducible.getPriority()));
						level(1, found, types, vars, history, clause);
						if (!explanations.contains(clause))
							explanations.add(clause);
					}
				}
			save();
		}
		assert invariant() : "Illegal state in Grounding.explain()";
		return explanations;
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see java.lang.Object#hashCode()
	 */
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = super.hashCode();
		result = prime * result + ((delta == null) ? 0 : delta.hashCode());
		result = prime * result + ((explanations == null) ? 0 : explanations.hashCode());
		result = prime * result + ((model == null) ? 0 : model.hashCode());
		result = prime * result + ((problem == null) ? 0 : problem.hashCode());
		result = prime * result + ((types == null) ? 0 : types.hashCode());
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
		return (null != delta && null != model && null != values);
	}

	public boolean isDeducible() {
		boolean result = false;
		Iterator<Set<Abducible>> iterator = delta.values().iterator();
		while (!result && iterator.hasNext())
			result = iterator.next().size() > 0;
		assert invariant() : "Illegal state in Grounding.isDeducible()";
		return result;
	}

	private void level(int level, Set<String> found, Memory types, Memory vars, Memory history, Clause clause) {
		Memory next = new Memory();
		// Map<Atom, Set<Atom>> next = new HashMap<>();
		for (Map<Literal, ModeBodyData> family : problem.modes().values())
			for (Literal mode : family.keySet()) {
				Atom predicate = mode.atom();
				for (Entry<Atom, Boolean> entry : parse(predicate, types, vars, history, next)) {
					Atom term = entry.getKey();
					String text = new Literal(mode.negated(), term).toPrint();
					if (entry.getValue() && mode.negated() != model.contains(term) && !found.contains(text)) {
						found.add(text);
						ModeBodyData data = family.get(mode);
						Literal literal = new Literal(mode.negated(), Atom.annotate(level, term, predicate, data.getWeight(), data.getPriority()));
						if (!clause.contains(literal))
							clause.append(literal);
					}
				}
				if (!next.isEmpty()) {
					history.append(next);
					level(level + 1, found, types, next, history, clause);
				}
			}
	}

	public Collection<Atom> model() {
		assert invariant() : "Illegal state in Grounding.model()";
		return model;
	}

	/**
	 * Parses the given predicate and returns the collection of matching atoms.
	 * 
	 * @param predicate
	 *            the predicate to parse
	 * @return the matching atoms as a collection of atoms
	 */
	private Collection<Entry<Atom, Boolean>> parse(Atom predicate, Memory types, Memory vars, Memory history, Memory next) {
		if (null == predicate)
			throw new IllegalArgumentException("Illegal 'predicate' argument in Deduction.parse(Atom, Map<Atom, Set<Atom>>): " + predicate);
		if (null == next)
			throw new IllegalArgumentException("Illegal 'next' argument in Deduction.parse(Atom, Map<Atom, Set<Atom>>): " + next);
		Map<Atom, Boolean> result = new HashMap<>();
		int arity = predicate.arity();
		String functor = predicate.name();
		if (Atom.PAR_INPUT.equals(functor) && 1 == arity) {
			for (Atom atom : history.values(predicate.get(0)))
				result.put(atom, vars.isNew(atom));
		} else if (Atom.PAR_OUTPUT.equals(functor) && 1 == arity) {
			Atom type = predicate.get(0);
			for (Atom atom : types.values(type)) {
				result.put(atom, false);
				if (!history.contains(type, atom))
					history.append(type, atom);
			}
		} else if (Atom.PAR_CONSTANT.equals(functor) && 1 == arity) {
			for (Atom atom : types.values(predicate.get(0)))
				result.put(atom, false);
		} else {
			Stack<Entry<Builder, Boolean>> stack = new Stack<>();
			stack.push(new SimpleEntry<Builder, Boolean>(Builder.get(functor), false));
			for (Atom term : predicate) {
				Stack<Entry<Builder, Boolean>> temp = new Stack<>();
				while (!stack.isEmpty()) {
					Entry<Builder, Boolean> entry = stack.pop();
					Builder builder = entry.getKey();
					boolean newUsed = entry.getValue();
					Collection<Entry<Atom, Boolean>> collection = parse(term, types, vars, history, next);
					if (null != collection)
						for (Entry<Atom, Boolean> e : collection) {
							Atom a = e.getKey();
							boolean value = e.getValue();
							value |= newUsed;
							temp.push(new SimpleEntry<Builder, Boolean>(Builder.get(builder).append(a), value));
						}
					else
						temp.push(new SimpleEntry<Builder, Boolean>(Builder.get(builder).append(Builder.get("#null").build()), false));
				}
				stack = temp;
			}
			for (Entry<Builder, Boolean> entry : stack)
				result.put(entry.getKey().build(), entry.getValue());
		}
		assert invariant() : "Illegal state in Deduction.parse(Atom)";
		return result.entrySet();
	}

	public Problem problem() {
		assert invariant() : "Illegal state in Grounding.problem()";
		return problem;
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see java.lang.Object#toString()
	 */
	@Override
	public String toString() {
		return "Grounding [\n  problem=" + problem + ",\n  model=" + model + ",\n  delta=" + delta + ",\n  explanations=" + explanations + ",\n  types="
				+ types + ",\n  values=" + values + "\n]";
	}

	public Collection<Integer> values() {
		assert invariant() : "Illegal state in Grounding.values()";
		return values;
	}

	private Map<Literal, ExampleData> cover;

	public Collection<Literal> cover() {
		if (null == cover || isModified()) {
			cover = new TreeMap<>();
			Map<Literal, ExampleData> master = problem.evidendes();
			for (Literal literal : master.keySet())
				if (literal.negated() != model.contains(literal.atom()))
					cover.put(literal, master.get(literal));
		}
		Collection<Literal> result = cover.keySet();
		assert invariant() : "Illegal state in Grounding.cover()";
		return result;
	}

}
