/**
 * 
 */
package ac.bristol.bragaglia.xhail.problem;

import java.util.AbstractMap.SimpleEntry;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import java.util.Stack;

import ac.bristol.bragaglia.xhail.predicates.Atom;
import ac.bristol.bragaglia.xhail.predicates.Builder;
import ac.bristol.bragaglia.xhail.predicates.Clause;
import ac.bristol.bragaglia.xhail.predicates.Literal;
import ac.bristol.bragaglia.xhail.problem.Problem.ModeBodyData;

/**
 * @author stefano
 *
 */
public class Deduction {

	/**
	 * Appends the content of the <code>source</code> map of variables into the
	 * <code>target</code> map of variables.
	 * <p>
	 * These maps are actually maps of sets, meaning that the <code>Atom</code>
	 * key recalls a type and the <code>Set&lt;Atom&gt;</code> value is the set
	 * of actual values for that type. Notice that, by using sets, it avoids
	 * duplications by default.
	 * 
	 * @param source
	 *            the map of variables to pour variables from
	 * @param target
	 *            the map of variables to receive variables
	 */
	private static void append(Map<Atom, Set<Atom>> source, Map<Atom, Set<Atom>> target) {
		if (null == source)
			throw new IllegalArgumentException("Illegal 'source' argument in Deduction.appends(Map<Atom, Set<Atom>>, Map<Atom, Set<Atom>>): " + source);
		if (null == target)
			throw new IllegalArgumentException("Illegal 'target' argument in Deduction.appends(Map<Atom, Set<Atom>>, Map<Atom, Set<Atom>>): " + target);
		for (Atom key : source.keySet()) {
			Set<Atom> set = target.get(key);
			if (null == set) {
				set = new LinkedHashSet<>();
				target.put(key, set);
			}
			set.addAll(source.get(key));
		}
	}

	/**
	 * Checks whether the given value of the given type is contained in the
	 * given memory.
	 * 
	 * @param type
	 *            the type of the value to search
	 * @param value
	 *            the value to search
	 * @param memory
	 *            the memory where to search the given value of the given type
	 * @return <code>true</code> if the given value of the given type is
	 *         contained in the given memory, <code>false</code> otherwise
	 */
	private static boolean contains(Atom type, Atom value, Map<Atom, Set<Atom>> memory) {
		return memory.containsKey(type) && memory.get(type).contains(value);
	}

	/**
	 * Returns the head atom that corresponds to the given abducee atom.
	 * 
	 * @param abducee
	 *            the abducee atom from whom to return the equivalent head atom
	 * @return the head atom corresponding to the given abducee atom
	 */
	private static Atom getHead(Atom abducee) {
		if (null == abducee)
			throw new IllegalArgumentException("Illegal 'abducee' argument in Deduction.getHead(Atom): " + abducee);
		String schema = abducee.name();
		if (schema.startsWith(Problem.TAG_ABDUCE)) {
			String[] parts = schema.split("_");
			Builder builder = Builder.get(parts[1]);
			for (Atom term : abducee)
				builder.append(getHeadTerm(term));
			abducee = builder.build();
		}
		return abducee;
	}

	/**
	 * Service methods to recurse on nested terms when returning the head atom
	 * corresponding to a given abducee atom.
	 * 
	 * @param term
	 *            the nested term on whom to recurse to generate the head atom
	 *            to return, equivalent to a given abducee atom
	 * @return the return atom corresponding to the given nested term
	 */
	private static Atom getHeadTerm(Atom term) {
		if (null == term)
			throw new IllegalArgumentException("Illegal 'term' argument in Deduction.getHeadTerm(Atom): " + term);
		Atom result;
		int arity = term.arity();
		String name = term.name();
		if (2 == arity && (name.equals(Atom.PAR_INPUT) || name.equals(Atom.PAR_OUTPUT) || name.equals(Atom.PAR_CONSTANT)))
			result = term.get(0);
		else {
			Builder builder = Builder.get(name);
			for (Atom child : term)
				builder.append(getHeadTerm(child));
			result = builder.build();
		}
		return result;
	}

	private static void getTypes(Atom fact, Collection<Atom> types, Map<Atom, Set<Atom>> memory) {
		int arity = fact.arity();
		Atom type = Builder.get(fact.name()).build();
		if (arity > 0) {
			if (1 == arity && types.contains(type))
				store(type, fact.get(0), memory);
			else
				for (Atom term : fact)
					getTypes(term, types, memory);
		}
	}

	/**
	 * Parses the given atom and appends the signature of any input variable
	 * found to the given map of variables (in the form <type, Set<value>).
	 * 
	 * @param atom
	 *            the atom to parse
	 * @param vars
	 *            the target map of variables
	 */
	private static void getVars(Atom atom, Map<Integer, Map<Literal, ModeBodyData>> modes, Map<Atom, Set<Atom>> vars) {
		if (null == atom)
			throw new IllegalArgumentException(
					"Illegal 'atom' argument in Deduction.getVars(Atom, Map<Integer, Map<Literal, ModeBodyData>>, Map<Atom, Set<Atom>>): " + atom);
		if (null == modes)
			throw new IllegalArgumentException(
					"Illegal 'modes' argument in Deduction.getVars(Atom, Map<Integer, Map<Literal, ModeBodyData>>, Map<Atom, Set<Atom>>): " + modes);
		if (null == vars)
			throw new IllegalArgumentException(
					"Illegal 'vars' argument in Deduction.getVars(Atom, Map<Integer, Map<Literal, ModeBodyData>>, Map<Atom, Set<Atom>>): " + vars);
		if (Atom.PAR_INPUT.equals(atom.name()) && atom.arity() == 2) {
			Atom key = atom.get(1);
			Set<Atom> values = vars.get(key);
			if (null == values) {
				values = new LinkedHashSet<>();
				vars.put(key, values);
			}
			Atom term = atom.get(0);
			values.add(term);
		} else
			for (Atom term : atom)
				getVars(term, modes, vars);
	}

	/**
	 * Stores the given value as item of the given type inside the given memory.
	 * 
	 * @param type
	 *            the type of the value to add to the memory
	 * @param value
	 *            the value to add to the memory
	 * @param memory
	 *            the memory where to store the given value as item of the given
	 *            type
	 */
	private static void store(Atom type, Atom value, Map<Atom, Set<Atom>> memory) {
		Set<Atom> set = memory.get(type);
		if (null == set) {
			set = new HashSet<>();
			memory.put(type, set);
		}
		set.add(value);
	}

	private Map<Atom, Entry<Integer, Integer>> delta;

	private Explanation explanation;

	private Set<String> found;

	private Map<Atom, Set<Atom>> history;

	private Set<Atom> model;

	private Map<Integer, Map<Literal, ModeBodyData>> modes;

	private Map<Atom, Set<Atom>> types;

	/**
	 * Default constructor for the component responsible of deduction.
	 * 
	 * @param explanation
	 *            the explanation to deduce
	 */
	protected Deduction(Explanation explanation) {
		if (null == explanation)
			throw new IllegalArgumentException("Illegal 'explanation' argument in Deduction(Explanation): " + explanation);
		this.delta = explanation.delta;
		this.explanation = explanation;
		this.found = new LinkedHashSet<>();
		this.model = explanation.model;
		this.modes = explanation.problem.modes();
		this.history = new HashMap<>();
		this.types = new HashMap<>();
		for (Atom fact : explanation.model)
			getTypes(fact, explanation.problem.types(), types);
		assert invariant() : "Illegal state in Deduction(Explanation)";
	}

	/**
	 * Invariant check against the internal state.
	 * 
	 * @return <code>true</code> if this instance's state is consistent,
	 *         <code>false</code> otherwise
	 */
	private boolean invariant() {
		return (null != delta && null != explanation && null != found && null != model && null != modes && null != history && null != types);
	}

	private boolean isNew(Atom atom, Map<Atom, Set<Atom>> vars) {
		boolean result = false;
		Iterator<Set<Atom>> iter = vars.values().iterator();
		while (!result && iter.hasNext())
			result = iter.next().contains(atom);
		return result;
	}

	private void level(int level, Map<Atom, Set<Atom>> vars, Clause clause) {
		Map<Atom, Set<Atom>> next = new HashMap<>();
		for (Map<Literal, ModeBodyData> family : modes.values())
			for (Literal mode : family.keySet()) {
				Atom predicate = mode.atom();

				for (Entry<Atom, Boolean> entry : parse(predicate, vars, next)) {
					Atom term = entry.getKey();
					String text = new Literal(mode.negated(), term).toPrint();
					if (entry.getValue() && mode.negated() != model.contains(term) && !found.contains(text)) {
						found.add(text);
						ModeBodyData data = family.get(mode);
						Literal literal = new Literal(mode.negated(), Explanation.annotate(level, term, predicate, data.getWeight(), data.getPriority()));
						if (!clause.contains(literal))
							clause.append(literal);
					}
				}
				if (!next.isEmpty()) {
					append(next, history);
					level(level + 1, next, clause);
				}
			}
	}

	/**
	 * Parses the given predicate and returns the collection of matching atoms.
	 * 
	 * @param predicate
	 *            the predicate to parse
	 * @return the matching atoms as a collection of atoms
	 */
	private Collection<Entry<Atom, Boolean>> parse(Atom predicate, Map<Atom, Set<Atom>> vars, Map<Atom, Set<Atom>> next) {
		if (null == predicate)
			throw new IllegalArgumentException("Illegal 'predicate' argument in Deduction.parse(Atom, Map<Atom, Set<Atom>>): " + predicate);
		if (null == next)
			throw new IllegalArgumentException("Illegal 'next' argument in Deduction.parse(Atom, Map<Atom, Set<Atom>>): " + next);
		Map<Atom, Boolean> result = new HashMap<>();
		int arity = predicate.arity();
		String functor = predicate.name();
		if (Atom.PAR_INPUT.equals(functor) && 1 == arity) {
			for (Atom atom : history.get(predicate.get(0)))
				result.put(atom, isNew(atom, vars));
		} else if (Atom.PAR_OUTPUT.equals(functor) && 1 == arity) {
			Atom type = predicate.get(0);
			for (Atom atom : types.get(type)) {
				result.put(atom, false);
				if (!contains(type, atom, history))
					store(type, atom, history);
			}
		} else if (Atom.PAR_CONSTANT.equals(functor) && 1 == arity) {
			for (Atom atom : types.get(predicate.get(0)))
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
					Collection<Entry<Atom, Boolean>> collection = parse(term, vars, next);
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

	/**
	 * Performs the deduction and returns the found clauses.
	 * 
	 * @return the clauses found by deduction
	 */
	public Collection<Clause> perform() {
		Set<Clause> result = new LinkedHashSet<>();
		for (Atom abducee : delta.keySet()) {
			Atom head = getHead(abducee);
			if (model.contains(head)) {
				Entry<Integer, Integer> value = delta.get(abducee);
				Clause clause = new Clause(Explanation.annotate(0, head, abducee, value.getKey(), value.getValue()));
				history.clear();
				Map<Atom, Set<Atom>> vars = new HashMap<>();
				getVars(abducee, modes, vars);
				append(vars, history);
				found.clear();
				level(1, vars, clause);
				if (!result.contains(clause))
					result.add(clause);
			}
		}
		assert invariant() : "Illegal state in Deduction.perform()";
		return result;
	}

}
