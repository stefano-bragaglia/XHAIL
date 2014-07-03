/**
 * 
 */
package ac.bristol.bragaglia.xhail.strategies.deduction;

import ac.bristol.bragaglia.xhail.config.Config;
import ac.bristol.bragaglia.xhail.core.Grounding;
import ac.bristol.bragaglia.xhail.core.Kernel;

/**
 * @author stefano
 *
 */
public class DefaultDeductiveSolver implements DeductivePhase {

	private static DeductivePhase instance = null;

	public static DeductivePhase get() {
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
	public Kernel solve(Config config, Grounding grounding) {
		if (null == config)
			throw new IllegalArgumentException("Illegal 'config' argument in DefaultDeductionSolver.solve(Config, Grounding): " + config);
		if (null == grounding)
			throw new IllegalArgumentException("Illegal 'generalization' argument in DefaultDeductionSolver.solve(Config, Grounding): " + grounding);
		config.getDeducing().start();
		Kernel result = Kernel.generalize(grounding, grounding.explain());
		config.getDeducing().stop();
		assert invariant() : "Illegal state in DefaultDeductionSolver.solve(Config, Grounding)";
		return result;
	}
}
