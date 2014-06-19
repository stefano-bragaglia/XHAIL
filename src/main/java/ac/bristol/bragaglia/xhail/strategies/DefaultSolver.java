/**
 * 
 */
package ac.bristol.bragaglia.xhail.strategies;

import ac.bristol.bragaglia.xhail.strategies.abduction.AbductiveStrategy;
import ac.bristol.bragaglia.xhail.strategies.abduction.DefaultAbductiveSolver;
import ac.bristol.bragaglia.xhail.strategies.deduction.DeductiveStrategy;
import ac.bristol.bragaglia.xhail.strategies.deduction.DefaultDeductiveSolver;
import ac.bristol.bragaglia.xhail.strategies.induction.DefaultInductiveSolver;
import ac.bristol.bragaglia.xhail.strategies.induction.InductiveStrategy;

/**
 * @author stefano
 *
 */
public class DefaultSolver extends AbstractStrategy {

	private static Strategy instance;

	public static Strategy get() {
		if (null == instance)
			instance = new DefaultSolver(DefaultAbductiveSolver.get(), DefaultDeductiveSolver.get(), DefaultInductiveSolver.get());
		return instance;
	}

	private DefaultSolver(AbductiveStrategy abduction, DeductiveStrategy deduction, InductiveStrategy induction) {
		super(abduction, deduction, induction);
		assert invariant() : "Illegal state in DefaultStrategy(Abduction, Deduction, Induction)";
	}

	protected boolean invariant() {
		return super.invariant() && (true);
	}

}
