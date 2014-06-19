/**
 * 
 */
package ac.bristol.bragaglia.xhail.problem;

import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
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
			if (term.arity() > 0)
				for (Map<Literal, ModeBodyData> family : modes.values())
					for (Literal mode : family.keySet())
						match(term, mode.atom(), vars);
		} else
			for (Atom term : atom)
				getVars(term, modes, vars);
	}

	private static void match(Atom atom, Atom mode, Map<Atom, Set<Atom>> memory) {
		int arity = mode.arity();
		if (mode.name().equals(atom.name()) && arity == atom.arity()) {
			for (int i = 0; i < arity; i++) {
				Atom term = mode.get(i);
				String functor = term.name();
				if (functor.equals(Atom.PAR_INPUT) || functor.equals(Atom.PAR_OUTPUT) || functor.equals(Atom.PAR_CONSTANT))
					store(term.get(term.arity() - 1), atom.get(i), memory);
			}
		} else
			for (Atom term : mode)
				match(atom, term, memory);
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
		return (null != delta && null != explanation && null != model && null != modes && null != history && null != types);
	}

	private void level(int level, Map<Atom, Set<Atom>> vars, Clause clause) {
		Map<Atom, Set<Atom>> next = new HashMap<>();
		for (Map<Literal, ModeBodyData> family : modes.values())
			for (Literal mode : family.keySet()) {
				Atom predicate = mode.atom();
				for (Atom term : parse(predicate, vars, next))
					if (mode.negated() != model.contains(term)) {
						ModeBodyData data = family.get(mode);
						Literal literal = new Literal(mode.negated(), Explanation.annotate(level, term, predicate, data.getWeight(), data.getPriority()));
						if (!clause.contains(literal)) {
							clause.append(literal);
							// TODO I'm already adding types to inductive phase...
							// for (Atom type : tipify(term, types)) {
							// Literal ltype = new Literal(false,
							// Explanation.annotate(level, type, type, 1, 1));
							// if (!clause.contains(ltype))
							// clause.append(ltype);
							// }
						}
					}
				if (!next.isEmpty()) {
					append(next, history);
					level(level + 1, next, clause);
				}
			}
	}

	// TODO I'm already adding types to inductive phase...
//	private static Collection<Atom> tipify(Atom atom, Map<Atom, Set<Atom>> types) {
//		Set<Atom> result = new HashSet<>();
//		if (0 == atom.arity()) {
//			for (Atom type : types.keySet())
//				if (types.get(type).contains(atom))
//					result.add(Builder.get(type.name()).append(atom).build());
//		} else
//			for (Atom term : atom)
//				result.addAll(tipify(term, types));
//		return result;
//	}

	/**
	 * Parses the given predicate and returns the collection of matching atoms.
	 * 
	 * @param predicate
	 *            the predicate to parse
	 * @return the matching atoms as a collection of atoms
	 */
	private Collection<Atom> parse(Atom predicate, Map<Atom, Set<Atom>> vars, Map<Atom, Set<Atom>> next) {
		if (null == predicate)
			throw new IllegalArgumentException("Illegal 'predicate' argument in Deduction.parse(Atom): " + predicate);
		Set<Atom> result;
		int arity = predicate.arity();
		String functor = predicate.name();
		if (Atom.PAR_INPUT.equals(functor) && 1 == arity) {
			result = vars.get(predicate.get(0));
		} else if (Atom.PAR_OUTPUT.equals(functor) && 1 == arity) {
			Atom type = predicate.get(0);
			result = types.get(type);
			for (Atom atom : result)
				if (!contains(type, atom, history)) {
					Set<Atom> set = next.get(type);
					if (null == set) {
						set = new LinkedHashSet<>();
						next.put(type, set);
					}
					set.add(atom);
				}
		} else if (Atom.PAR_CONSTANT.equals(functor) && 1 == arity) {
			result = types.get(predicate.get(0));
		} else {
			Stack<Builder> stack = new Stack<>();
			stack.push(Builder.get(functor));
			for (Atom term : predicate) {
				Stack<Builder> temp = new Stack<>();
				while (!stack.isEmpty()) {
					Builder builder = stack.pop();
					Collection<Atom> collection = parse(term, vars, next);
					if (null != collection)
						for (Atom candidate : collection)
							temp.push(Builder.get(builder).append(candidate));
					else
						temp.push(Builder.get(builder).append(Builder.get("#null").build()));
				}
				stack = temp;
			}
			result = new HashSet<>();
			for (Builder builder : stack)
				result.add(builder.build());
		}
		assert invariant() : "Illegal state in Deduction.parse(Atom)";
		return result;
	}

	// private int abd;

	/**
	 * Performs the deduction
	 * 
	 * @return the clauses after deduction
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
				level(1, vars, clause);
				result.add(clause);
			}
		}
		assert invariant() : "Illegal state in Deduction.perform()";
		return result;
	}
}
