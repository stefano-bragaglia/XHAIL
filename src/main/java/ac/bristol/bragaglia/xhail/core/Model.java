/**
 * 
 */
package ac.bristol.bragaglia.xhail.core;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.PrintStream;
import java.util.Collection;
import java.util.LinkedHashSet;
import java.util.Set;
import java.util.TreeSet;

/**
 * An object to hold a gringo/clasp model.
 * 
 * @author stefano
 *
 */
public class Model extends Modifiable {

	public static void append(Collection<String> collection, StringBuilder target) {
		if (null == collection)
			throw new IllegalArgumentException("Illegal 'collection' argument in Model.append(Collection<String>, StringBuilder): " + collection);
		if (null == target)
			throw new IllegalArgumentException("Illegal 'target' argument in Model.append(Collection<String>, StringBuilder): " + target);
		if (collection.size() > 0) {
			for (String element : collection)
				target.append(element.concat("\n"));
			target.append("\n");
		}
	}

	public static <T> boolean isLast(LinkedHashSet<T> collection, T element) {
		if (null == collection)
			throw new IllegalArgumentException("Illegal 'collection' argument in <T> Model.isLast(LinkedHashSet<T>, T): " + collection);
		if (null == element)
			throw new IllegalArgumentException("Illegal 'element' argument in <T> Model.isLast(LinkedHashSet<T>, T): " + element);
		boolean result = false;
		if (!collection.isEmpty() && collection.contains(element)) {
			T last = null;
			for (T current : collection)
				last = current;
			result = last.equals(element);
		}
		return result;
	}

	/**
	 * The set of clauses of this model.
	 */
	private Set<String> clauses;

	/**
	 * The set of compute directives of this model.
	 */
	private Set<String> computes;

	/**
	 * The set of constant directives of this model.
	 */
	private Set<String> constants;

	/**
	 * The set of constraint clauses of this model.
	 */
	private Set<String> constraints;

	/**
	 * The set of domain directives of this model.
	 */
	private Set<String> domains;

	/**
	 * The set of external directives of this model.
	 */
	private Set<String> externals;

	/**
	 * The set of fact clauses of this model.
	 */
	private Set<String> facts;

	/**
	 * The ordered set of hide/show directives of this model.
	 */
	private LinkedHashSet<String> hideshows;

	/**
	 * The set of maximise directives of this model.
	 */
	private Set<String> maximizes;

	/**
	 * The set of minimise directives of this model.
	 */
	private Set<String> minimizes;

	/**
	 * Default constructor. Generates and empty model.
	 */
	public Model() {
		super();
		this.clauses = new TreeSet<>();
		this.computes = new TreeSet<>();
		this.constants = new TreeSet<>();
		this.constraints = new TreeSet<>();
		this.domains = new TreeSet<>();
		this.externals = new TreeSet<>();
		this.hideshows = new LinkedHashSet<>();
		this.facts = new TreeSet<>();
		this.maximizes = new TreeSet<>();
		this.minimizes = new TreeSet<>();
		assert invariant() : "Illegal state in Model()";
	}

	/**
	 * Default constructor. Clones the given non-<code>null</code> model.
	 * 
	 * @param model
	 *            the model to clone
	 */
	protected Model(Model model) {
		super();
		if (null == model)
			throw new IllegalArgumentException("Illegal 'model' argument in Model(Model): " + model);
		this.clauses = new TreeSet<>(model.clauses());
		this.computes = new TreeSet<>(model.computes());
		this.constants = new TreeSet<>(model.constants());
		this.constraints = new TreeSet<>(model.constraints());
		this.domains = new TreeSet<>(model.domains());
		this.externals = new TreeSet<>(model.externals());
		this.hideshows = new LinkedHashSet<>(model.hideshows());
		this.facts = new TreeSet<>(model.facts());
		this.maximizes = new TreeSet<>(model.maximizes());
		this.minimizes = new TreeSet<>(model.minimizes());
		assert invariant() : "Illegal state in Model(Model)";
	}

	/**
	 * Adds the given clause to this model. If the model did not contain the
	 * given statement, the <code>modified</code> flag is set.
	 * 
	 * @param clause
	 *            the clause to add
	 * @return <code>true</code> if the model did not already contain the given
	 *         statement, <code>false</code> otherwise
	 */
	public boolean addClause(String clause) {
		if (null == clause || (clause = clause.trim()).isEmpty())
			throw new IllegalArgumentException("Illegal 'clause' argument in Model.addClause(String): " + clause);
		boolean result = clauses.add(clause);
		if (result)
			update();
		assert invariant() : "Illegal state in Model.addClause(String)";
		return result;
	}

	/**
	 * Adds the given compute directive to this model. If the model did not
	 * contain the given statement, the <code>modified</code> flag is set.
	 * 
	 * @param compute
	 *            the compute directive to add
	 * @return <code>true</code> if the model did not already contain the given
	 *         statement, <code>false</code> otherwise
	 */
	public boolean addCompute(String compute) {
		if (null == compute || (compute = compute.trim()).isEmpty())
			throw new IllegalArgumentException("Illegal 'compute' argument in Model.addCompute(String): " + compute);
		boolean result = computes.add(compute);
		if (result)
			update();
		assert invariant() : "Illegal state in Model.addCompute(String)";
		return result;
	}

	/**
	 * Adds the given constant directive to this model. If the model did not
	 * contain the given statement, the <code>modified</code> flag is set.
	 * 
	 * @param constant
	 *            the constant directive to add
	 * @return <code>true</code> if the model did not already contain the given
	 *         statement, <code>false</code> otherwise
	 */
	public boolean addConstant(String constant) {
		if (null == constant || (constant = constant.trim()).isEmpty())
			throw new IllegalArgumentException("Illegal 'constant' argument in Model.addConstant(String): " + constant);
		boolean result = constants.add(constant);
		if (result)
			update();
		assert invariant() : "Illegal state in Model.addConstant(String)";
		return result;
	}

	/**
	 * Adds the given constraint clause to this model. If the model did not
	 * contain the given statement, the <code>modified</code> flag is set.
	 * 
	 * @param constraint
	 *            the constraint clause to add
	 * @return <code>true</code> if the model did not already contain the given
	 *         statement, <code>false</code> otherwise
	 */
	public boolean addConstraint(String constraint) {
		if (null == constraint || (constraint = constraint.trim()).isEmpty())
			throw new IllegalArgumentException("Illegal 'constraint' argument in Model.addConstraint(String): " + constraint);
		boolean result = constraints.add(constraint);
		if (result)
			update();
		assert invariant() : "Illegal state in Model.addConstraint(String)";
		return result;
	}

	/**
	 * Adds the given domain directive to this model. If the model did not
	 * contain the given statement, the <code>modified</code> flag is set.
	 * 
	 * @param domain
	 *            the domain directive to add
	 * @return <code>true</code> if the model did not already contain the given
	 *         statement, <code>false</code> otherwise
	 */
	public boolean addDomain(String domain) {
		if (null == domain || (domain = domain.trim()).isEmpty())
			throw new IllegalArgumentException("Illegal 'domain' argument in Model.addDomain(String): " + domain);
		boolean result = domains.add(domain);
		if (result)
			update();
		assert invariant() : "Illegal state in Model.addDomain(String)";
		return result;
	}

	/**
	 * Adds the given external directive to this model. If the model did not
	 * contain the given statement, the <code>modified</code> flag is set.
	 * 
	 * @param external
	 *            the external directive to add
	 * @return <code>true</code> if the model did not already contain the given
	 *         statement, <code>false</code> otherwise
	 */
	public boolean addExternal(String external) {
		if (null == external || (external = external.trim()).isEmpty())
			throw new IllegalArgumentException("Illegal 'external' argument in Model.addExternal(String): " + external);
		boolean result = externals.add(external);
		if (result)
			update();
		assert invariant() : "Illegal state in Model.addExternal(String)";
		return result;
	}

	/**
	 * Adds the given fact clause to this model. If the model did not contain
	 * the given statement, the <code>modified</code> flag is set.
	 * 
	 * @param fact
	 *            the fact clause to add
	 * @return <code>true</code> if the model did not already contain the given
	 *         statement, <code>false</code> otherwise
	 */
	public boolean addFact(String fact) {
		if (null == fact || (fact = fact.trim()).isEmpty())
			throw new IllegalArgumentException("Illegal 'fact' argument in Model.addFact(String): " + fact);
		boolean result = facts.add(fact);
		if (result)
			update();
		assert invariant() : "Illegal state in Model.addFact(String)";
		return result;
	}

	/**
	 * Adds the given hide directive to this model. If the model did not contain
	 * the given statement, the <code>modified</code> flag is set.
	 * 
	 * @param hide
	 *            the hide directive to add
	 * @return <code>true</code> if the model did not already contain the given
	 *         statement, <code>false</code> otherwise
	 */
	public boolean addHide(String hide) {
		if (null == hide || (hide = hide.trim()).isEmpty())
			throw new IllegalArgumentException("Illegal 'hide' argument in Model.addHide(String): " + hide);
		if (hide.equals("#hide."))
			hideshows.clear();
		else if (hideshows.contains(hide) && !isLast(hideshows, hide))
			hideshows.remove(hide);
		boolean result = hideshows.add(hide);
		if (result)
			update();
		assert invariant() : "Illegal state in Model.addHide(String)";
		return result;
	}

	/**
	 * Adds the given maximize directive to this model. If the model did not
	 * contain the given statement, the <code>modified</code> flag is set.
	 * 
	 * @param maximize
	 *            the maximize directive to add
	 * @return <code>true</code> if the model did not already contain the given
	 *         statement, <code>false</code> otherwise
	 */
	public boolean addMaximize(String maximize) {
		if (null == maximize || (maximize = maximize.trim()).isEmpty())
			throw new IllegalArgumentException("Illegal 'maximize' argument in Model.addMaximize(String): " + maximize);
		boolean result = maximizes.add(maximize);
		if (result)
			update();
		assert invariant() : "Illegal state in Model.addMaximize(String)";
		return result;
	}

	/**
	 * Adds the given minimize directive to this model. If the model did not
	 * contain the given statement, the <code>modified</code> flag is set.
	 * 
	 * @param minimize
	 *            the minimize directive to add
	 * @return <code>true</code> if the model did not already contain the given
	 *         statement, <code>false</code> otherwise
	 */
	public boolean addMinimize(String minimize) {
		if (null == minimize || (minimize = minimize.trim()).isEmpty())
			throw new IllegalArgumentException("Illegal 'addMinimize' argument in Model.addMinimize(String): " + minimize);
		boolean result = minimizes.add(minimize);
		if (result)
			update();
		assert invariant() : "Illegal state in Model.addMinimize(String)";
		return result;
	}

	/**
	 * Adds the given show directive to this model. If the model did not contain
	 * the given statement, the <code>modified</code> flag is set.
	 * 
	 * @param show
	 *            the show directive to add
	 * @return <code>true</code> if the model did not already contain the given
	 *         statement, <code>false</code> otherwise
	 */
	public boolean addShow(String show) {
		if (null == show || (show = show.trim()).isEmpty())
			throw new IllegalArgumentException("Illegal 'show' argument in Model.addShow(String): " + show);
		boolean result = true;
		if (show.equals("#show."))
			hideshows.clear();
		else
			result = addHide(show);
		if (result)
			update();
		assert invariant() : "Illegal state in Model.addShow(String)";
		return result;
	}

	/**
	 * Returns the clauses of the model as a collection.
	 * 
	 * @return the clauses of the model as a collection
	 */
	public Collection<String> clauses() {
		assert invariant() : "Illegal state in Model.clauses()";
		return clauses;
	}

	/**
	 * Empties the model. If the model was not empty, the <code>modified</code>
	 * flag is set.
	 */
	public void clear() {
		clauses.clear();
		constants.clear();
		constraints.clear();
		domains.clear();
		externals.clear();
		facts.clear();
		maximizes.clear();
		minimizes.clear();
		update();
		assert invariant() : "Illegal state in Model.clear()";
	}

	/**
	 * Returns the compute directives of the model as a collection.
	 * 
	 * @return the compute directives of the model as a collection
	 */
	public Collection<String> computes() {
		assert invariant() : "Illegal state in Model.computes()";
		return computes;
	}

	/**
	 * Returns the constant directives of the model as a collection.
	 * 
	 * @return the constant directives of the model as a collection
	 */
	public Collection<String> constants() {
		assert invariant() : "Illegal state in Model.constants()";
		return constants;
	}

	/**
	 * Returns the constraint clauses of the model as a collection.
	 * 
	 * @return the constraint clauses of the model as a collection
	 */
	public Collection<String> constraints() {
		assert invariant() : "Illegal state in Model.constraints()";
		return constraints;
	}

	/**
	 * Returns the domain directives of the model as a collection.
	 * 
	 * @return the domain directives of the model as a collection
	 */
	public Collection<String> domains() {
		assert invariant() : "Illegal state in Model.domains()";
		return domains;
	}

	/**
	 * Dumps this model into the given file.
	 * 
	 * @param file
	 *            the file where to dump this model
	 * @return
	 */
	public boolean dump(File file) {
		if (null == file)
			throw new IllegalArgumentException("Illegal 'file' argument in Model.dump(File): " + file);
		boolean result = false;
		try {
			PrintStream stream = new PrintStream(file);
			stream.append(this.toString());
			stream.flush();
			stream.close();
			result = true;
		} catch (FileNotFoundException e) {
		}
		assert invariant() : "Illegal state in Model.dump(File)";
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
		Model other = (Model) obj;
		if (clauses == null) {
			if (other.clauses != null)
				return false;
		} else if (!clauses.equals(other.clauses))
			return false;
		if (computes == null) {
			if (other.computes != null)
				return false;
		} else if (!computes.equals(other.computes))
			return false;
		if (constants == null) {
			if (other.constants != null)
				return false;
		} else if (!constants.equals(other.constants))
			return false;
		if (constraints == null) {
			if (other.constraints != null)
				return false;
		} else if (!constraints.equals(other.constraints))
			return false;
		if (domains == null) {
			if (other.domains != null)
				return false;
		} else if (!domains.equals(other.domains))
			return false;
		if (externals == null) {
			if (other.externals != null)
				return false;
		} else if (!externals.equals(other.externals))
			return false;
		if (facts == null) {
			if (other.facts != null)
				return false;
		} else if (!facts.equals(other.facts))
			return false;
		if (hideshows == null) {
			if (other.hideshows != null)
				return false;
		} else if (!hideshows.equals(other.hideshows))
			return false;
		if (maximizes == null) {
			if (other.maximizes != null)
				return false;
		} else if (!maximizes.equals(other.maximizes))
			return false;
		if (minimizes == null) {
			if (other.minimizes != null)
				return false;
		} else if (!minimizes.equals(other.minimizes))
			return false;
		return true;
	}

	/**
	 * Returns the external directives of the model as a collection.
	 * 
	 * @return the external directives of the model as a collection
	 */
	public Collection<String> externals() {
		assert invariant() : "Illegal state in Model.externals()";
		return externals;
	}

	/**
	 * Returns the fact clauses of the model as a collection.
	 * 
	 * @return the fact clauses of the model as a collection
	 */
	public Collection<String> facts() {
		assert invariant() : "Illegal state in Model.facts()";
		return facts;
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
		result = prime * result + ((clauses == null) ? 0 : clauses.hashCode());
		result = prime * result + ((computes == null) ? 0 : computes.hashCode());
		result = prime * result + ((constants == null) ? 0 : constants.hashCode());
		result = prime * result + ((constraints == null) ? 0 : constraints.hashCode());
		result = prime * result + ((domains == null) ? 0 : domains.hashCode());
		result = prime * result + ((externals == null) ? 0 : externals.hashCode());
		result = prime * result + ((facts == null) ? 0 : facts.hashCode());
		result = prime * result + ((hideshows == null) ? 0 : hideshows.hashCode());
		result = prime * result + ((maximizes == null) ? 0 : maximizes.hashCode());
		result = prime * result + ((minimizes == null) ? 0 : minimizes.hashCode());
		return result;
	}

	/**
	 * Returns the hide/show directives of the model as a collection.
	 * 
	 * @return the hide/show directives of the model as a collection
	 */
	public Collection<String> hideshows() {
		assert invariant() : "Illegal state in Model.hideshows()";
		return hideshows;
	}

	/**
	 * Invariant check against the internal state.
	 * 
	 * @return <code>true</code> if this instance's state is consistent,
	 *         <code>false</code> otherwise
	 */
	private boolean invariant() {
		return (null != clauses && null != computes && null != constants && null != constraints && null != domains && null != externals && null != hideshows
				&& null != facts && null != maximizes && null != minimizes);
	}

	public boolean isEmpty() {
		boolean result = clauses.isEmpty();
		result &= computes.isEmpty();
		result &= constants.isEmpty();
		result &= constraints.isEmpty();
		result &= domains.isEmpty();
		result &= externals.isEmpty();
		result &= facts.isEmpty();
		result &= hideshows.isEmpty();
		result &= maximizes.isEmpty();
		result &= minimizes.isEmpty();
		assert invariant() : "Illegal state in Model.isEmpty()";
		return result;
	}

	/**
	 * Returns the maximize directives of the model as a collection.
	 * 
	 * @return the maximize directives of the model as a collection
	 */
	public Collection<String> maximizes() {
		assert invariant() : "Illegal state in Model.maximizes()";
		return maximizes;
	}

	/**
	 * Returns the minimize directives of the model as a collection.
	 * 
	 * @return the minimize directives of the model as a collection
	 */
	public Collection<String> minimizes() {
		assert invariant() : "Illegal state in Model.minimizes()";
		return minimizes;
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see java.lang.Object#toString()
	 */
	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		append(hideshows, builder);
		append(constants, builder);
		append(domains, builder);
		append(externals, builder);
		append(computes, builder);
		append(maximizes, builder);
		append(minimizes, builder);
		append(clauses, builder);
		append(constraints, builder);
		append(facts, builder);
		assert invariant() : "Illegal state in Model.toString()";
		return builder.toString();
	}

}
