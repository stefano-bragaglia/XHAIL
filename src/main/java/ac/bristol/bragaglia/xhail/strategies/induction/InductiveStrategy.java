/**
 * 
 */
package ac.bristol.bragaglia.xhail.strategies.induction;

import ac.bristol.bragaglia.xhail.config.Config;
import ac.bristol.bragaglia.xhail.problem.Hypothesis;
import ac.bristol.bragaglia.xhail.problem.Kernel;

/**
 * @author stefano
 *
 */
public interface InductiveStrategy {

	public Hypothesis solve(Config config, Kernel deduced);

}
