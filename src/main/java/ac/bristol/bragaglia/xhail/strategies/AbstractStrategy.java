/**
 * 
 */
package ac.bristol.bragaglia.xhail.strategies;

import ac.bristol.bragaglia.xhail.config.Config;
import ac.bristol.bragaglia.xhail.problem.Explanation;
import ac.bristol.bragaglia.xhail.problem.Hypothesis;
import ac.bristol.bragaglia.xhail.problem.Kernel;
import ac.bristol.bragaglia.xhail.problem.Program;
import ac.bristol.bragaglia.xhail.strategies.abduction.AbductiveStrategy;
import ac.bristol.bragaglia.xhail.strategies.deduction.DeductiveStrategy;
import ac.bristol.bragaglia.xhail.strategies.induction.InductiveStrategy;

/**
 * @author stefano
 *
 */
public abstract class AbstractStrategy implements Strategy {

	private AbductiveStrategy abductiveSolver;

	private DeductiveStrategy deductiveSolver;

	private InductiveStrategy inductiveSolver;

	public AbstractStrategy(AbductiveStrategy abductiveSolver, DeductiveStrategy deductiveSolver, InductiveStrategy inductiveSolver) {
		if (null == abductiveSolver)
			throw new IllegalArgumentException("Illegal 'abduction' argument in AbstractStrategy(Abduction, Deduction, Induction): " + abductiveSolver);
		if (null == deductiveSolver)
			throw new IllegalArgumentException("Illegal 'deduction' argument in AbstractStrategy(Abduction, Deduction, Induction): " + deductiveSolver);
		if (null == inductiveSolver)
			throw new IllegalArgumentException("Illegal 'induction' argument in AbstractStrategy(Abduction, Deduction, Induction): " + inductiveSolver);
		this.abductiveSolver = abductiveSolver;
		this.deductiveSolver = deductiveSolver;
		this.inductiveSolver = inductiveSolver;
		assert invariant() : "Illegal state in AbstractStrategy(AbductiveStrategy, DeductiveStrategy, InductiveStrategy)";
	}

	protected boolean invariant() {
		return (null != abductiveSolver && null != deductiveSolver && null != inductiveSolver);
	}

	@Override
	public boolean solve(Program program) {
		if (null == program)
			throw new IllegalArgumentException("Illegal 'program' argument in AbstractStrategy.solve(Program): " + program);
		boolean result = false;
		Config config = program.getConfig();
		Explanation generalization = abductiveSolver.solve(config, program.getProblem());
		if (null != generalization) {
			Program.inject(generalization, program);
			if (program.isGeneralizable()) {
				Kernel kernel = deductiveSolver.solve(config, generalization);
				if (null != kernel) {
					Program.inject(kernel, program);
					if (kernel.isGeneralizable()) {
						Hypothesis hypothesis = inductiveSolver.solve(config, kernel);
						if (null != hypothesis) {
							Program.inject(hypothesis, program);
							result = true;
						}
					} else
						result = true;
				}
			} else
				result = true;
		}
		assert invariant() : "Illegal state in AbstractStrategy.solve()";
		return result;
	}

}
