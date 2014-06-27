/**
 * 
 */
package ac.bristol.bragaglia.xhail.problem;

import java.util.AbstractMap.SimpleEntry;
import java.util.Collection;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import java.util.TreeSet;

import ac.bristol.bragaglia.xhail.predicates.Atom;
import ac.bristol.bragaglia.xhail.predicates.Builder;
import ac.bristol.bragaglia.xhail.predicates.Clause;

/**
 * @author stefano
 *
 */
public class Explanation {

	/**
	 * Returns a predicate annotation that includes specific information about a
	 * given atom.
	 * 
	 * @param level
	 *            the deduction level of the atom (as an <code>Atom</code>)
	 * @param atom
	 *            the atom to be annotated
	 * @param schema
	 *            the supporting schema of the atom
	 * @param weight
	 *            the weight associated to the supporting schema (as an
	 *            <code>Atom</code>)
	 * @param priority
	 *            the priority associated to the supporting schema (as an
	 *            <code>Atom</code>)
	 * @return a predicate annotation including the above information
	 */
	public static Atom annotate(Atom level, Atom atom, Atom schema, Atom weight, Atom priority) {
		if (null == level)
			throw new IllegalArgumentException("Illegal 'level' argument in Deduction.annotate(Atom, Atom, Atom, Atom, Atom): " + level);
		if (null == atom)
			throw new IllegalArgumentException("Illegal 'atom' argument in Deduction.annotate(Atom, Atom, Atom, Atom, Atom): " + atom);
		if (null == schema)
			throw new IllegalArgumentException("Illegal 'schema' argument in Deduction.annotate(Atom, Atom, Atom, Atom, Atom): " + schema);
		if (null == weight)
			throw new IllegalArgumentException("Illegal 'weight' argument in Deduction.annotate(Atom, Atom, Atom, Atom, Atom): " + weight);
		if (null == priority)
			throw new IllegalArgumentException("Illegal 'priority' argument in Deduction.annotate(Atom, Atom, Atom, Atom, Atom): " + priority);
		Builder builder = Builder.get(Explanation.TAG_NOTE);
		builder.append(level);
		builder.append(weight);
		builder.append(priority);
		builder.append(atom);
		builder.append(schema);
		return builder.build();
	}

	/**
	 * Returns a predicate annotation that includes specific information about a
	 * given atom.
	 * 
	 * @param level
	 *            the deduction level of the atom (as an <code>int</code>)
	 * @param atom
	 *            the atom to be annotated
	 * @param schema
	 *            the supporting schema of the atom
	 * @param weight
	 *            the weight associated to the supporting schema (as an
	 *            <code>int</code>)
	 * @param priority
	 *            the priority associated to the supporting schema (as an
	 *            <code>int</code>)
	 * @return a predicate annotation including the above information
	 */
	public static Atom annotate(int level, Atom atom, Atom schema, int weight, int priority) {
		if (level < 0)
			throw new IllegalArgumentException("Illegal 'level' argument in Deduction.annotate(int, Atom, Atom, int, int): " + level);
		if (null == atom)
			throw new IllegalArgumentException("Illegal 'atom' argument in Deduction.annotate(int, Atom, Atom, int, int): " + atom);
		if (null == schema)
			throw new IllegalArgumentException("Illegal 'schema' argument in Deduction.annotate(int, Atom, Atom, int, int): " + schema);
		return annotate(Builder.get(String.valueOf(level)).build(), atom, schema, //
				Builder.get(String.valueOf(weight)).build(), //
				Builder.get(String.valueOf(priority)).build());
	}

	public static final int ID_ATOM = 3;

	public static final int ID_LEVEL = 0;

	public static final int ID_PRIORITY = 2;

	public static final int ID_SCHEMA = 4;
	public static final int ID_ACCESSORS = ID_SCHEMA;

	public static final int ID_TYPES = 1;

	public static final int ID_VARS = 0;

	public static final int ID_WEIGHT = 1;

	public static final String TAG_ACCESSORS = "#accessors";

	public static final String TAG_NOTE = "#note";

	public static final String TAG_TYPES = "#types";

	public static final String TAG_VARS = "#vars";

	protected LinkedHashMap<Atom, Entry<Integer, Integer>> delta;

	private Set<Clause> kappa;

	protected Set<Atom> model;

	private boolean modified;

	protected Problem problem;

	public Explanation(Problem problem, Map<List<Integer>, Set<Set<Atom>>> delta) {
		if (null == problem)
			throw new IllegalArgumentException("Illegal 'problem' argument in Explanation(Problem, Map<List<Integer>, Set<Set<Atom>>>): " + problem);
		if (null == delta)
			throw new IllegalArgumentException("Illegal 'delta' argument in Explanation(Problem, Map<List<Integer>, Set<Set<Atom>>>): " + delta);
		this.delta = new LinkedHashMap<>();
		this.model = new TreeSet<>();
		this.kappa = new LinkedHashSet<>();
		this.modified = !problem.modebodies().isEmpty();
		this.problem = problem;
		this.setup(delta);
		assert invariant() : "Illegal state in Explanation(Problem, Map<List<Integer>, Set<Set<Atom>>>)";
	}

	private boolean addDelta(Atom predicate, int weight, int priority) {
		// whatever weight and priority
		if (null == predicate)
			throw new IllegalArgumentException("Illegal 'predicate' argument in Explanation.addDelta(Atom, int, int): " + predicate);
		Entry<Integer, Integer> next = new SimpleEntry<Integer, Integer>(weight, priority);
		Entry<Integer, Integer> last = delta.put(predicate, next);
		boolean result = (null == last || last != next);
		modified |= result;
		assert invariant() : "Illegal state in Explanation.addDelta(Atom, int, int)";
		return result;
	}

	private boolean addFact(Atom predicate) {
		if (null == predicate)
			throw new IllegalArgumentException("Illegal 'predicate' argument in Explanation.addFact(Atom): " + predicate);
		boolean result = model.add(predicate);
		modified |= result;
		assert invariant() : "Illegal state in Explanation.addFact(Atom)";
		return result;
	}

	public Kernel deduce() {
		// NB: Solution calls generalization.kappa() which solves this phase
		Kernel result = new Kernel(this);
		assert invariant() : "Illegal state in Explanation.deduce()";
		return result;
	}

	public Collection<Atom> delta() {
		Set<Atom> result = new LinkedHashSet<>();
		for (Atom atom : delta.keySet()) {
			Builder builder = Builder.get(atom.name().split("_")[1]);
			for (Atom term : atom)
				builder.append(term);
			result.add(builder.build());
		}
		assert invariant() : "Illegal state in Explanation.delta()";
		return result;
	}

	private boolean invariant() {
		return (null != delta && null != kappa && null != model && null != problem);
	}

	public boolean isModified() {
		assert invariant() : "Illegal state in Explanation.isModified()";
		return modified;
	}

	/**
	 * Returns the kernel out of this explanation.
	 * <p>
	 * If the explanation has been modified, the kernel is computed from scratch
	 * and eventually the <code>modified</code> flag is set to
	 * <code>false</code>. If the kernel needs to be computed, this method does
	 * the following:
	 * <ul>
	 * <li>clears current set of clauses</li>
	 * <li>builds the set of explanations by:</li>
	 * <ul>
	 * <li>iterating over abducees,</li>
	 * <li>determining the set of input variables for that abducee,</li>
	 * <li>using the abducee as the head of the explanation clause,</li>
	 * <li>calling <code>deduceLevel(...)</code> which eventually builds the
	 * desired explanation clause</li>
	 * </ul>
	 * <li>generalises the explanation clauses found above into kernel clauses.</li>
	 * </ul>
	 * <p>
	 * Notice that the call to <code>deduceLevel(...)</code> requires
	 * <code>1</code> as the initial value for the <code>level</code> parameter,
	 * an empty <code>LinkedHashMap</code> for both the <code>past</code> and
	 * <code>current</code> maps of variables, the given map of input variables
	 * as the <code>next</code> map of variables to test and finally the current
	 * incomplete explanation as the <code>clause</code> to build.
	 * 
	 * @return the kernel of this explanation as a collection of clauses
	 * @see #deduceLevel(int, Map, Map, Map, Clause)
	 */
	public Collection<Clause> kappa() {
		if (modified) {
			Deduction deduction = new Deduction(this);
			Generalisation generalisation = new Generalisation(deduction.perform());
			kappa = new LinkedHashSet<>(generalisation.perform());
			modified = false;
		}
		assert invariant() : "Illegal state in Explanation.kappa()";
		return kappa;
	}

	public Collection<Atom> model() {
		assert invariant() : "Illegal state in Explanation.model()";
		return model;
	}

	public Problem problem() {
		assert invariant() : "Illegal state in Explanation.problem()";
		return problem;
	}

	/**
	 * This utility method sets up the generalization by processing the
	 * predicates
	 * 
	 * @param delta
	 */
	private void setup(Map<List<Integer>, Set<Set<Atom>>> delta) {
		Set<Atom> last = Collections.emptySet();
		for (List<Integer> values : delta.keySet())
			for (Set<Atom> set : delta.get(values))
				last = set;
		for (Atom fact : last) {
			String name = fact.name();
			if (name.startsWith(Problem.TAG_ABDUCE)) {
				String[] parts = name.split("_");
				this.addDelta(fact, Integer.parseInt(parts[2]), Integer.parseInt(parts[3]));
			} else
				this.addFact(fact);
//		Iterator<Set<Atom>> iterator = delta.iterator();
//		if (iterator.hasNext()) {
//			Set<Atom> last = Collections.emptySet();
//			while (iterator.hasNext())
//				last = iterator.next();
//			for (Atom fact : last) {
//				String name = fact.name();
//				if (name.startsWith(Problem.TAG_ABDUCE)) {
//					String[] parts = name.split("_");
//					this.addDelta(fact, Integer.parseInt(parts[2]), Integer.parseInt(parts[3]));
//				} else
//					this.addFact(fact);
//			}
		}
	}

}
