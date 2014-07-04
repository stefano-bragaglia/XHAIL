/**
 * 
 */
package ac.bristol.bragaglia.xhail.strategies;

import java.util.Collection;
import java.util.LinkedHashSet;
import java.util.Set;

import ac.bristol.bragaglia.xhail.config.Config;
import ac.bristol.bragaglia.xhail.core.Answer;
import ac.bristol.bragaglia.xhail.core.Grounding;
import ac.bristol.bragaglia.xhail.core.Hypothesis;
import ac.bristol.bragaglia.xhail.core.Kernel;
import ac.bristol.bragaglia.xhail.core.Problem;
import ac.bristol.bragaglia.xhail.strategies.abduction.AbductivePhase;
import ac.bristol.bragaglia.xhail.strategies.deduction.DeductivePhase;
import ac.bristol.bragaglia.xhail.strategies.induction.InductivePhase;

/**
 * @author stefano
 *
 */
public abstract class AbstractStrategy implements Strategy {

	private AbductivePhase abductiveSolver;

	private DeductivePhase deductiveSolver;

	private InductivePhase inductiveSolver;

	public AbstractStrategy(AbductivePhase abductiveSolver, DeductivePhase deductiveSolver, InductivePhase inductiveSolver) {
		if (null == abductiveSolver)
			throw new IllegalArgumentException("Illegal 'abduction' argument in AbstractStrategy(Abduction, Deduction, Induction): " + abductiveSolver);
		if (null == deductiveSolver)
			throw new IllegalArgumentException("Illegal 'deduction' argument in AbstractStrategy(Abduction, Deduction, Induction): " + deductiveSolver);
		if (null == inductiveSolver)
			throw new IllegalArgumentException("Illegal 'induction' argument in AbstractStrategy(Abduction, Deduction, Induction): " + inductiveSolver);
		this.abductiveSolver = abductiveSolver;
		this.deductiveSolver = deductiveSolver;
		this.inductiveSolver = inductiveSolver;
		assert invariant() : "Illegal state in AbstractStrategy(AbductivePhase, DeductivePhase, InductivePhase)";
	}

	protected boolean invariant() {
		return (null != abductiveSolver && null != deductiveSolver && null != inductiveSolver);
	}

	@Override
	public Collection<Answer> solve(Config config, Problem problem) {
		if (null == config)
			throw new IllegalArgumentException("Illegal 'config' argument in AbstractStrategy.solve(Config, Problem): " + config);
		if (null == problem)
			throw new IllegalArgumentException("Illegal 'problem' argument in AbstractStrategy.solve(Config, Problem): " + problem);
		Set<Answer> result = new LinkedHashSet<>();
		if (!problem.isEmpty()) {
			Collection<Grounding> groundings = abductiveSolver.solve(config, problem);
			if (null != groundings)
				for (Grounding grounding : groundings) {
					if (grounding.isDeducible()) {
						Kernel kernel = deductiveSolver.solve(config, grounding);
						if (null != kernel) {
							if (kernel.isInducible()) {
								Collection<Hypothesis> hypotheses = inductiveSolver.solve(config, kernel);
								if (null != hypotheses) {
									for (Hypothesis hypothesis : hypotheses)
										result.add(new Answer(problem, grounding, kernel, hypothesis));
								} else
									result.add(new Answer(problem, grounding, kernel));
							} else
								result.add(new Answer(problem, grounding, kernel));
						} else
							result.add(new Answer(problem, grounding));
					} else {
						result.add(new Answer(problem, grounding));
					}
				}
		}
		assert invariant() : "Illegal state in AbstractStrategy.solve(Config, Problem)";
		return result;
	}

	// @Override
	// public boolean solve(Program program) {
	// if (null == program)
	// throw new
	// IllegalArgumentException("Illegal 'program' argument in AbstractStrategy.solve(Program): "
	// + program);
	// boolean result = false;
	// Config config = program.getConfig();
	// Collection<Grounding> groundings = abductiveSolver.solve(config,
	// program.getProblem());
	// if (null != groundings)
	// for (Grounding grounding : groundings) {
	// // not needed anymore: we collect answers instead
	// // Program.inject(explanation, program);
	// if (program.isGeneralizable()) {
	// Kernel kernel = deductiveSolver.solve(config, explanation);
	// if (null != kernel) {
	// Program.inject(kernel, program);
	// if (kernel.isGeneralizable()) {
	// Hypothesis hypothesis = inductiveSolver.solve(config, kernel);
	// if (null != hypothesis) {
	// Program.inject(hypothesis, program);
	// result = true;
	// }
	// } else
	// result = true;
	// }
	// } else
	// result = true;
	// }
	// assert invariant() : "Illegal state in AbstractStrategy.solve()";
	// return result;
	// }

}
