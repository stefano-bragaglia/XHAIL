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
public interface DeductiveStrategy {

	public Kernel solve(Config config, Explanation abduced);

}
