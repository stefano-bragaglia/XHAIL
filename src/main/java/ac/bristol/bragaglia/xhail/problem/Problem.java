/**
 * 
 */
package ac.bristol.bragaglia.xhail.problem;

import java.util.Collection;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;
import java.util.StringJoiner;
import java.util.TreeMap;
import java.util.TreeSet;

import ac.bristol.bragaglia.xhail.predicates.Atom;
import ac.bristol.bragaglia.xhail.predicates.Literal;

/**
 * A class to hold the annex data of example directives.
 * 
 * @author stefano
 */
public class Problem extends Model {

	public class ExampleData {

		private Integer priority;

		private Integer weight;

		public ExampleData(Integer weight, Integer priority) {
			this.priority = priority;
			this.weight = weight;
		}

		public String asData() {
			return String.format(" =%d @%d", getWeight(), getPriority());
		}

		public String asData(int maxPriority) {
			return String.format(" =%d @%d", getWeight(), 1 + maxPriority + getPriority());
		}

		public Integer getPriority() {
			return null != priority ? priority : 1;
		}

		public Integer getWeight() {
			return null != weight ? weight : 1;
		}

		public boolean isMute() {
			return null == weight && null == priority;
		}

		@Override
		public String toString() {
			String result = "";
			if (null != weight)
				result += String.format(" =%d", weight);
			if (null != priority)
				result += String.format(" @%d", priority);
			return result;
		}

	}

	/**
	 * A class to hold the annex data of mode body directives.
	 * 
	 * @author stefano
	 */
	public class ModeBodyData {

		private Integer bound;

		private Integer priority;

		private Integer weight;

		public ModeBodyData(Integer bound, Integer weight, Integer priority) {
			this.bound = bound;
			this.priority = priority;
			this.weight = weight;
		}

		public String asData() {
			return String.format(" =%d @%d", getWeight(), getPriority());
		}

		public Integer getBound() {
			return null != bound ? bound : 1;
		}

		public Integer getPriority() {
			return null != priority ? priority : 1;
		}

		public Integer getWeight() {
			return null != weight ? weight : 1;
		}

		@Override
		public String toString() {
			String result = "";
			if (null != bound)
				result += String.format(" :%d", bound);
			result += asData();
			return result;
		}

	}

	/**
	 * A class to hold the annex data of mode head directives.
	 * 
	 * @author stefano
	 */
	public class ModeHeadData {

		private Integer lower;

		private Integer priority;

		private Integer upper;

		private Integer weight;

		public ModeHeadData(Integer lower, Integer upper, Integer weight, Integer priority) {
			if (null == lower && null != upper)
				throw new IllegalArgumentException("Illegal 'lower' argument in ModeHeadData(Integer, Integer, Integer, Integer): " + lower);
			this.lower = lower;
			this.priority = priority;
			this.upper = upper;
			this.weight = weight;
		}

		public String asData() {
			return String.format(" =%d @%d", getWeight(), getPriority());
		}

		public String asLower() {
			if (null == lower || null == upper)
				return "";
			else if (lower <= upper)
				return lower + " ";
			else
				return upper + " ";
		}

		public String asUpper() {
			if (null == lower || null == upper)
				return "";
			else if (lower <= upper)
				return " " + upper;
			else
				return " " + lower;
		}

		public Integer getPriority() {
			return null != priority ? priority : 1;
		}

		public Integer getWeight() {
			return null != weight ? weight : 1;
		}

		@Override
		public String toString() {
			String result = "";
			if (null != upper) {
				result += " :";
				if (null != lower)
					result += lower + "-";
				result += upper;
			}
			result += asData();
			return result;
		}

		public int maxPriority(int maxPriority) {
			int result = getPriority();
			if (maxPriority > result)
				result = maxPriority;
			return result;
		}

	}

	/**
	 * The constant prefix for abducibles.
	 */
	public static final String TAG_ABDUCE = "abd_";

	/**
	 * The constant prefix for types.
	 */
	public static final String TAG_TYPE = "typ_";

	/**
	 * This utility method takes the given non-<code>null</code> non-empty tag,
	 * the given non-<code>null</code> non-empty name, the given weight value,
	 * the given priority value and the given non-<code>null</code> non-empty
	 * list to generate and return the resulting predicate.
	 * 
	 * @param tag
	 *            the tag to use
	 * @param name
	 *            the name to use
	 * @param weight
	 *            the weight to use
	 * @param priority
	 *            the priority to use
	 * @param list
	 *            the list to use
	 * @return the resulting predicate
	 */
	private static String compose(String tag, String name, int weight, int priority, String list) {
		if (null == tag || (tag = tag.trim()).isEmpty())
			throw new IllegalArgumentException("Illegal 'tag' argument in Problem.compose(String, String, int, int, String): " + tag);
		if (null == name || (name = name.trim()).isEmpty())
			throw new IllegalArgumentException("Illegal 'name' argument in Problem.compose(String, String, int, int, String): " + name);
		if (null == list)
			throw new IllegalArgumentException("Illegal 'list' argument in Problem.compose(String, String, int, int, String): " + list);
		if (list.isEmpty())
			return String.format("%s%s_%d_%d", tag, name, weight, priority);
		else
			return String.format("%s%s_%d_%d(%s)", tag, name, weight, priority, list);
	}

	/**
	 * The set of example directives of this problem (plus annexes).
	 */
	private Map<Literal, ExampleData> examples;

	/**
	 * The set of body mode directives of this problem (plus annexes, the
	 * priority is explicit (the <code>Integer</code>) because we need body
	 * modes sorted by priority in the deductive phase).
	 */
	private Map<Integer, Map<Literal, ModeBodyData>> modebodies;

	/**
	 * The set of head mode directives of this problem (plus annexes).
	 */
	private Map<Atom, ModeHeadData> modeheads;

	/**
	 * The flag to tell if the model was modified.
	 */
	private boolean modified;

	/**
	 * The set of types defined in this problem.
	 */
	private Set<Atom> types;

	/**
	 * Default constructor. Generates and empty problem.
	 */
	public Problem() {
		super();
		this.examples = new TreeMap<>();
		this.modebodies = new TreeMap<>();
		this.modeheads = new TreeMap<>();
		this.types = new TreeSet<>();
		this.modified = false;
		assert invariant() : "Illegal state in Problem()";
	}

	/**
	 * Adds the given example directive to this problem. If the problem did not
	 * contain the given statement, the <code>modified</code> flag is set.
	 * 
	 * @param example
	 *            the example directive to add
	 * @return <code>true</code> if the problem did not already contain the
	 *         given statement, <code>false</code> otherwise
	 */
	public boolean addExample(Literal fact, Integer weight, Integer priority) {
		if (null == fact)
			throw new IllegalArgumentException("Illegal 'fact' argument in ConcreteProblem.addExample(Literal, Integer, Integer): " + fact);
		ExampleData value = new ExampleData(weight, priority);
		ExampleData previous = examples.put(fact, value);
		boolean result = (null == previous || previous.equals(value));
		modified |= result;
		assert invariant() : "Illegal state in Problem.addExample(Literal, Integer, Integer)";
		return result;
	}

	/**
	 * Adds the given body mode directive to this problem. If the problem did
	 * not contain the given statement, the <code>modified</code> flag is set.
	 * 
	 * @param show
	 *            the body mode directive to add
	 * @return <code>true</code> if the model did not already contain the given
	 *         statement, <code>false</code> otherwise
	 */
	public boolean addModeBody(Literal body, Integer bound, Integer weight, Integer priority) {
		if (null == body)
			throw new IllegalArgumentException("Illegal 'body' argument in Problem.addModeBody(Literal, Integer, Integer, Integer): " + body);
		findTypes(body.atom());
		int p = null != priority ? priority : 1;
		Map<Literal, ModeBodyData> bodies = modebodies.get(p);
		if (null == bodies) {
			bodies = new LinkedHashMap<>();
			modebodies.put(p, bodies);
			modified = true;
		}
		ModeBodyData value = new ModeBodyData(bound, weight, priority);
		ModeBodyData previous = bodies.put(body, value);
		boolean result = (null == previous || previous.equals(value));
		modified |= result;
		assert invariant() : "Illegal state in Problem.addModeBody(Literal, Integer, Integer, Integer)";
		return result;
	}

	/**
	 * Adds the given head mode directive to this problem. If the problem did
	 * not contain the given statement, the <code>modified</code> flag is set.
	 * 
	 * @param show
	 *            the head mode directive to add
	 * @return <code>true</code> if the model did not already contain the given
	 *         statement, <code>false</code> otherwise
	 */
	public boolean addModeHead(Atom head, Integer min, Integer max, Integer weight, Integer priority) {
		if (null == head)
			throw new IllegalArgumentException("Illegal 'head' argument in Problem.addModeHead(Atom, Integer, Integer, Integer, Integer): " + head);
		if (min >= 0 && max < 0)
			throw new IllegalArgumentException("Illegal 'min' argument in Problem.addModeHead(Atom, Integer, Integer, Integer, Integer): " + min);
		if (max < min || (min < 0 && max >= 0))
			throw new IllegalArgumentException("Illegal 'max' argument in Problem.addModeHead(Atom, Integer, Integer, Integer, Integer): " + max);
		findTypes(head);
		ModeHeadData value = new ModeHeadData(min, max, weight, priority);
		ModeHeadData previous = modeheads.put(head, value);
		boolean result = (null == previous || previous.equals(value));
		modified |= result;
		assert invariant() : "Illegal state in Problem.addModeHead(Atom, Integer, Integer, Integer, Integer)";
		return result;
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see ac.bristol.bragaglia.xhail.Model#clear()
	 */
	@Override
	public void clear() {
		super.clear();
		modified = !(examples.isEmpty() && modebodies.isEmpty() && modeheads.isEmpty());
		examples.clear();
		modebodies.clear();
		modeheads.size();
		assert invariant() : "Illegal state in Problem.clear()";
	}

	/**
	 * Derives a model from this problem and returns it. This method clones the
	 * standard model that is included in this program; then it takes every
	 * non-standard statement, converts it into one or more standard statements
	 * and finally add them to the cloned model. The resulting augmented cloned
	 * model is finally returned.
	 * 
	 * @return the model equivalent to this problem
	 */
	public Model derive() {
		Model result = new Model(this);
		processModeHeads(result);
		processModeBodies(result);
		processExamples(result);
		assert invariant() : "Illegal state in Problem.derive()";
		return result;
	}

	/**
	 * Returns the example directives of the problem as a collection.
	 * 
	 * @return the example directives of the problem as a collection
	 */
	public Collection<String> examples() {
		Set<String> result = new TreeSet<>();
		for (Literal key : examples.keySet())
			result.add(String.format("#example %s%s.", key.toPrint(), examples.get(key).toString()));
		assert invariant() : "Illegal state in Problem.examples()";
		return result;
	}

	/**
	 * Recursively parses the given non-<code>null</code> atom to find all its
	 * type definitions. A type definition is any term preceded by a
	 * <code>+</code>, <code>-</code> and <code>$</code>. All the type
	 * definitions found in this way are finally added to the set of type
	 * definitions of this problem.
	 * 
	 * @param atom
	 *            the atom to parse
	 */
	private void findTypes(Atom atom) {
		if (null == atom)
			throw new IllegalArgumentException("Illegal 'atom' argument in Problem.findTypes(Atom): " + atom);
		int arity = atom.arity();
		String functor = atom.name();
		if (arity > 0)
			if (1 == arity && (Atom.PAR_INPUT.equals(functor) || Atom.PAR_OUTPUT.equals(functor) || Atom.PAR_CONSTANT.equals(functor)))
				types.add(atom.get(0));
			else
				for (Atom term : atom)
					findTypes(term);
		assert invariant() : "Illegal state in Problem.findTypes(Atom)";
	}

	/**
	 * Invariant check against the internal state.
	 * 
	 * @return <code>true</code> if this instance's state is consistent,
	 *         <code>false</code> otherwise
	 */
	private boolean invariant() {
		return (null != examples && null != modebodies && null != modeheads);
	}

	/**
	 * Tells whether this problem is generalisable or not. A generalisable
	 * problem is a problem with at least a head mode directive. Only in this
	 * case, in fact, it is possible to have some abducibles.
	 * 
	 * @return <code>true</code> if the problem is generalisable,
	 *         <code>false</code> otherwise
	 */
	public boolean isGeneralizable() {
		boolean result = !modeheads.isEmpty();
		assert invariant() : "Illegal state in Problem.isGeneralizable()";
		return result;
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see ac.bristol.bragaglia.xhail.Model#isModified()
	 */
	@Override
	public boolean isModified() {
		boolean result = super.isModified() || modified;
		assert invariant() : "Illegal state in Problem.isModified()";
		return result;
	}

	/**
	 * Returns the modebodies directives of the problem as a collection.
	 * 
	 * @return the modebodies directives of the problem as a collection
	 */
	public Collection<String> modebodies() {
		Set<String> result = new TreeSet<>();
		for (int priority : modebodies.keySet()) {
			Map<Literal, ModeBodyData> bodies = modebodies.get(priority);
			for (Literal body : bodies.keySet())
				result.add(String.format("#modeb %s%s.", body.toPrint(), bodies.get(body).toString()));
		}
		assert invariant() : "Illegal state in Problem.modebodies()";
		return result;
	}

	/**
	 * Returns the modehead directives of the problem as a collection.
	 * 
	 * @return the modehead directives of the problem as a collection
	 */
	public Collection<String> modeheads() {
		Set<String> result = new TreeSet<>();
		for (Atom key : modeheads.keySet())
			result.add(String.format("#modeh %s%s.", key.toPrint(), examples.get(key).toString()));
		assert invariant() : "Illegal state in Problem.modeheads()";
		return result;
	}

	/**
	 * Utility method to extract the set of body mode directives (plus annexes)
	 * from a problem.
	 * 
	 * @param problem
	 *            the problem from whom extracting the body mode directives
	 * @return the body mode directives of the problem
	 */
	public Map<Integer, Map<Literal, ModeBodyData>> modes() {
		assert invariant() : "Illegal state in Problem.modes()";
		return modebodies;
	}

	/**
	 * This utility method converts any example directive of this problem into
	 * standard statements and adds them to the given non-<code>null</code>
	 * model. Specifically, it adds the constraints for certain examples
	 * (required in both the abductive and inductive phase) and the maximization
	 * of examples coverage (required only in the abductive phase).
	 * 
	 * @param model
	 *            the model to whom adding the converted example directives
	 */
	private void processExamples(Model model) {
		if (null == model)
			throw new IllegalArgumentException("Illegal 'model' argument in Problem.processExamples(Model): " + model);
		if (!examples.isEmpty()) {
			StringJoiner joiner = new StringJoiner(", ");
			for (Literal key : examples.keySet()) {
				ExampleData value = examples.get(key);
				joiner.add(key.toString() + value.asData());
				if (value.isMute())
					model.addConstraint(String.format(":- %s%s.", key.negated() ? "" : "not ", key.atom().toString()));
			}
			model.addMaximize(String.format("#maximize[ %s ].", joiner.toString()));
		}
		assert invariant() : "Illegal state in Problem.processExamples(Model)";
	}

	// private void processExamplesMW(Model model) {
	// if (null == model)
	// throw new
	// IllegalArgumentException("Illegal 'model' argument in Problem.processExamplesMW(Model): "
	// + model);
	// int maxPriority = 0;
	// if (!modebodies.isEmpty())
	// maxPriority = ((TreeMap<Integer, Map<Literal, ModeBodyData>>)
	// modebodies).lastKey();
	// for (ModeHeadData data : modeheads.values())
	// maxPriority = data.maxPriority(maxPriority);
	// if (!examples.isEmpty()) {
	// StringJoiner joiner = new StringJoiner(", ");
	// for (Literal key : examples.keySet()) {
	// ExampleData value = examples.get(key);
	// joiner.add(key.toString() + value.asData(maxPriority));
	// if (value.isMute())
	// model.addConstraint(String.format(":- %s%s.", key.negated() ? "" :
	// "not ", key.atom().toString()));
	// }
	// model.addMaximize(String.format("#maximize[ %s ].", joiner.toString()));
	// }
	// assert invariant() : "Illegal state in Problem.processExamplesMW(Model)";
	// }

	/**
	 * This utility method converts any modebody directive of this problem into
	 * standard statements and adds them to the given non-<code>null</code>
	 * model.
	 * 
	 * @param model
	 *            the model to whom adding the converted modebody directives
	 */
	private void processModeBodies(Model model) {
		if (null == model)
			throw new IllegalArgumentException("Illegal 'model' argument in Problem.processModeBodies(Model): " + model);
		if (!modebodies.isEmpty())
			for (int key : modebodies.keySet())
				for (Literal body : modebodies.get(key).keySet()) {
					model.addShow(String.format("#show %s/%d.", body.name(), body.arity()));
					for (Atom term : body)
						processModeTerms(model, term);
				}
		assert invariant() : "Illegal state in Problem.processModeBodies(Model)";
	}

	/**
	 * Adds recursion to processModeBodies(Model model) and
	 * processModeHeads(Model model) issue #show directives.
	 * 
	 * @param model
	 * @param term
	 */
	private void processModeTerms(Model model, Atom term) {
		if (null == model)
			throw new IllegalArgumentException("Illegal 'model' argument in Problem.processModeTerms(Model, Atom): " + model);
		if (null == term)
			throw new IllegalArgumentException("Illegal 'term' argument in Problem.processModeTerms(Model, Atom): " + term);
		int arity = term.arity();
		String name = term.name();
		if (name.equals(Atom.PAR_INPUT) || name.equals(Atom.PAR_OUTPUT) || name.equals(Atom.PAR_CONSTANT))
			model.addShow(String.format("#show %s/%d.", term.get(arity - 1), 1));
		else {
			model.addShow(String.format("#show %s/%d.", name, arity));
			for (int i = 0; i < arity; i++)
				processModeTerms(model, term.get(i));
		}
		assert invariant() : "Illegal state in Problem.processModeTerms(Model, Atom)";
	}

	/**
	 * This utility method converts any modehead directive of this problem into
	 * standard statements and adds them to the given non-<code>null</code>
	 * model.
	 * 
	 * @param model
	 *            the model to whom adding the converted modehead directives
	 */
	private void processModeHeads(Model model) {
		if (null == model)
			throw new IllegalArgumentException("Illegal 'model' argument in Problem.processModeHeads(Model): " + model);
		if (!modeheads.isEmpty()) {
			for (Atom key : modeheads.keySet()) {
				int arity = key.arity();
				String name = key.name();
				ModeHeadData value = modeheads.get(key);
				int weight = value.getWeight();
				int priority = value.getPriority();
				int i = 0;
				StringJoiner termsJoiner = new StringJoiner(", ");
				StringJoiner typesJoiner = new StringJoiner(", ");
				StringJoiner varsJoiner = new StringJoiner(", ");
				for (Atom term : key) {
					i += 1;
					termsJoiner.add(String.format("%s(V%d, %s)", term.name(), i, term.get(0).toPrint()));
					if (term.get(0).isParameter())
						typesJoiner.add(String.format("%s(V%d, %s)", term.get(0).name(), i, term.get(0).get(term.get(0).arity() - 1).toPrint()));
					else
						typesJoiner.add(String.format("%s(V%d)", term.get(0).toPrint(), i));
					varsJoiner.add(String.format("V%d", i));
					processModeTerms(model, term);
				}
				String terms = termsJoiner.toString();
				String types = typesJoiner.toString();
				String vars = varsJoiner.toString();
				String abduce = compose(TAG_ABDUCE, name, weight, priority, terms);
				String type = compose(TAG_TYPE, name, weight, priority, vars);
				model.addShow(String.format("#hide %s%s_%d_%d/%d .", TAG_TYPE, name, weight, priority, arity));
				model.addShow(String.format("#show %s%s_%d_%d/%d .", TAG_ABDUCE, name, weight, priority, arity));
				model.addShow(String.format("#show %s / %d .", name, arity));
				model.addMinimize(String.format("#minimize[ %s%s : %s ].", abduce, value.asData(), type));
				model.addClause(String.format("%s :- %s.", type, types));
				model.addClause(String.format("%s(%s) :- %s, %s.", name, vars, type, abduce));
				model.addClause(String.format("%s{ %s : %s }%s.", value.asLower(), abduce, type, value.asUpper()));
			}
		}
		assert invariant() : "Illegal state in Problem.processModeHeads(Model)";
	}

	// private void processStandard(Model model) {
	// if (null == model)
	// throw new
	// IllegalArgumentException("Illegal 'model' argument in Problem.processStandard(Model): "
	// + model);
	// if (!examples.isEmpty())
	// for (Literal key : examples.keySet())
	// if (examples.get(key).isMute())
	// model.addConstraint(String.format(":- %s%s.", key.negated() ? "" :
	// "not ", key.atom().toString()));
	// assert invariant() : "Illegal state in Problem.processStandard(Model)";
	// }

	/*
	 * (non-Javadoc)
	 * 
	 * @see ac.bristol.bragaglia.xhail.Model#save()
	 */
	@Override
	public void save() {
		super.save();
		modified = false;
		assert invariant() : "Illegal state in Problem.save()";
	}

	public Model standard() {
		Model result = new Model(this);
		// processStandard(result);
		processExamples(result);
		return result;
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see ac.bristol.bragaglia.xhail.Model#toString()
	 */
	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		append(hideshows(), builder);
		append(constants(), builder);
		append(domains(), builder);
		append(externals(), builder);
		append(examples(), builder);
		append(modeheads(), builder);
		append(modebodies(), builder);
		append(computes(), builder);
		append(maximizes(), builder);
		append(minimizes(), builder);
		append(clauses(), builder);
		append(facts(), builder);
		append(constraints(), builder);
		assert invariant() : "Illegal state in Problem.toString()";
		return builder.toString();
	}

	/**
	 * Returns the type definitions of the problem as a collection.
	 * 
	 * @return the type definitions of the problem as a collection
	 */
	public Collection<Atom> types() {
		assert invariant() : "Illegal state in Problem.types()";
		return types;
	}

}
