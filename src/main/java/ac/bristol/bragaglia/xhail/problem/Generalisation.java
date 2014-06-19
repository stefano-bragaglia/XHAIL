/**
 * 
 */
package ac.bristol.bragaglia.xhail.problem;

import java.util.Collection;
import java.util.Hashtable;
import java.util.LinkedHashSet;
import java.util.Map;
import java.util.Set;
import java.util.TreeSet;

import ac.bristol.bragaglia.xhail.predicates.Atom;
import ac.bristol.bragaglia.xhail.predicates.Builder;
import ac.bristol.bragaglia.xhail.predicates.Clause;
import ac.bristol.bragaglia.xhail.predicates.Literal;

/**
 * @author stefano
 *
 */
public class Generalisation {

	private static Atom generalize(Atom atom, Atom schema, Map<Atom, Builder> table, Set<Atom> vars, Set<Atom> types) {
		if (null == atom)
			throw new IllegalArgumentException("Illegal 'atom' argument in Explanation.generalize(Atom, Atom, Map<Atom, Builder>, Set<Atom>, Set<Atom>): "
					+ atom);
		if (null == schema)
			throw new IllegalArgumentException("Illegal 'schema' argument in Explanation.generalize(Atom, Atom, Map<Atom, Builder>, Set<Atom>, Set<Atom>): "
					+ schema);
		if (null == table)
			throw new IllegalArgumentException("Illegal 'table' argument in Explanation.generalize(Atom, Atom, Map<Atom, Builder>, Set<Atom>, Set<Atom>): "
					+ table);
		if (null == vars)
			throw new IllegalArgumentException("Illegal 'vars' argument in Explanation.generalize(Atom, Atom, Map<Atom, Builder>, Set<Atom>, Set<Atom>): "
					+ vars);
		if (null == types)
			throw new IllegalArgumentException("Illegal 'types' argument in Explanation.generalize(Atom, Atom, Map<Atom, Builder>, Set<Atom>, Set<Atom>): "
					+ types);
		Builder builder;
		int arityA = atom.arity();
		int arityS = schema.arity();
		String name = atom.name();
		String kind = schema.name();
		String[] parts = kind.split("_");
		if (4 == parts.length)
			kind = parts[1];

		if (0 == arityA && 0 == arityS && name.equals(kind)) {
			builder = Builder.get(name);
		} else if ((1 == arityS || atom.equals(schema.get(0))) && (1 == arityS || 2 == arityS) && (Atom.PAR_INPUT.equals(kind) || Atom.PAR_OUTPUT.equals(kind))) {
			Builder var = table.get(atom);
			if (null == var) {
				var = Builder.get("V" + (1 + table.size()));
				table.put(atom, var);
			}
			builder = Builder.get(var);
			types.add(Builder.get(schema.get(arityS - 1).name()).append(var.build()).build());
			vars.add(var.build());
		} else if ((1 == arityS || atom.equals(schema.get(0))) && (1 == arityS || 2 == arityS) && (Atom.PAR_CONSTANT.equals(kind))) {
			builder = Builder.get(name);
			for (int i = 0; i < arityA; i++)
				builder.append(atom.get(i));
		} else if (0 == arityA && (1 == arityS || 2 == arityS) && (Atom.PAR_CONSTANT.equals(kind))) {
			builder = Builder.get(name);
		} else if (arityA > 0 && (1 == arityS || 2 == arityS) && (Atom.PAR_CONSTANT.equals(kind))) {
			builder = Builder.get(name);
			for (int i = 0; i < arityA; i++)
				builder.append(generalize(atom.get(i), schema.get(i), table, vars, types));
		} else if (arityA == arityS && name.equals(kind)) {
			builder = Builder.get(name);
			for (int i = 0; i < arityA; i++)
				builder.append(generalize(atom.get(i), schema.get(i), table, vars, types));
		} else {
			throw new UnsupportedOperationException("Atom: " + atom + " - Schema: " + schema + " [" + arityA + ", " + arityS + "]");
		}
		return builder.build();
	}

	private static Atom generalize(Atom atom, Map<Atom, Builder> table) {
		if (null == atom)
			throw new IllegalArgumentException("Illegal 'atom' argument in Explanation.generalize(Atom, Map<Atom, Builder): " + atom);
		if (null == table)
			throw new IllegalArgumentException("Illegal 'table' argument in Explanation.generalize(Atom, Map<Atom, Builder>): " + table);
		Atom result;
		if (Explanation.TAG_NOTE.equals(atom.name()) && 5 == atom.arity()) {
			Set<Atom> vars = new TreeSet<>();
			Set<Atom> types = new TreeSet<>();
			Atom desired = generalize(atom.get(Explanation.ID_ATOM), atom.get(Explanation.ID_SCHEMA), table, vars, types);
			Builder bvars = Builder.get(Explanation.TAG_VARS);
			for (Atom var : vars)
				bvars.append(var);
			Builder btypes = Builder.get(Explanation.TAG_TYPES);
			for (Atom type : types)
				btypes.append(type);
			Atom accessors = Builder.get(Explanation.TAG_ACCESSORS).append(bvars.build()).append(btypes.build()).build();
			result = Explanation.annotate(atom.get(Explanation.ID_LEVEL), desired, accessors, atom.get(Explanation.ID_WEIGHT),
					atom.get(Explanation.ID_PRIORITY));
		} else
			result = atom;
		return result;
	}

	private static Literal generalize(Literal literal, Map<Atom, Builder> table) {
		if (null == literal)
			throw new IllegalArgumentException("Illegal 'literal' argument in Explanation.generalize(Literal, Map<Atom, Builder): " + literal);
		if (null == table)
			throw new IllegalArgumentException("Illegal 'table' argument in Explanation.generalize(Literal, Map<Atom, Builder>): " + table);
		return new Literal(literal.negated(), generalize(literal.atom(), table));
	}

	private Set<Clause> clauses;

	/**
	 * Default constructor for the component responsible of generalisation.
	 * 
	 * @param clauses
	 *            the collection of clauses from deduction
	 */
	protected Generalisation(Collection<Clause> clauses) {
		if (null == clauses)
			throw new IllegalArgumentException("Illegal 'clauses' argument in Generalisation(Collection<Clause>): " + clauses);
		this.clauses = new LinkedHashSet<>(clauses);
		assert invariant() : "Illegal state in Generalisation(Collection<Clause>)";
	}

	/**
	 * Invariant check against the internal state.
	 * 
	 * @return <code>true</code> if this instance's state is consistent,
	 *         <code>false</code> otherwise
	 */
	private boolean invariant() {
		return (null != clauses);
	}

	public Collection<Clause> perform() {
		Set<Clause> result = new LinkedHashSet<>();
		for (Clause clause : clauses) {
			Map<Atom, Builder> table = new Hashtable<>();
			Clause current = new Clause(generalize(clause.head(), table));
			for (Literal literal : clause)
				current.append(generalize(literal, table));
			result.add(current);
		}
		assert invariant() : "Illegal state in Generalisation.perform()";
		return result;
	}

}
