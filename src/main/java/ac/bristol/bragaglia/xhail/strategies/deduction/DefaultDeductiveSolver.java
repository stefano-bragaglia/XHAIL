/**
 * 
 */
package ac.bristol.bragaglia.xhail.strategies.deduction;

import ac.bristol.bragaglia.xhail.config.Config;
import ac.bristol.bragaglia.xhail.problem.Explanation;
import ac.bristol.bragaglia.xhail.problem.Kernel;

/**
 * @author stefano
 *
 */
public class DefaultDeductiveSolver implements DeductiveStrategy {

	private static DeductiveStrategy instance = null;

	public static DeductiveStrategy get() {
		if (null == instance)
			instance = new DefaultDeductiveSolver();
		return instance;
	}

	private DefaultDeductiveSolver() {
	}

	private boolean invariant() {
		return (true);
	}

	@Override
	public Kernel solve(Config config, Explanation generalization) {
		if (null == config)
			throw new IllegalArgumentException("Illegal 'config' argument in DefaultDeductionSolver.solve(Config, Abduced): " + config);
		if (null == generalization)
			throw new IllegalArgumentException("Illegal 'generalization' argument in DefaultDeductionSolver.solve(Config, Abdduced): " + generalization);
		Kernel result = generalization.deduce();
		assert invariant() : "Illegal state in DefaultDeductionSolver.solve(Config, Abdduced)";
		return result;
	}
}
