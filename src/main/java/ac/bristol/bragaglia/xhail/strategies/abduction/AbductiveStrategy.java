/**
 * 
 */
package ac.bristol.bragaglia.xhail.strategies.abduction;

import ac.bristol.bragaglia.xhail.config.Config;
import ac.bristol.bragaglia.xhail.problem.Explanation;
import ac.bristol.bragaglia.xhail.problem.Problem;

/**
 * @author stefano
 *
 */
public interface AbductiveStrategy {

	public Explanation solve(Config config, Problem problem);

}
