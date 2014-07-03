/**
 * 
 */
package ac.bristol.bragaglia.xhail.strategies;

import java.util.Collection;

import ac.bristol.bragaglia.xhail.config.Config;
import ac.bristol.bragaglia.xhail.core.Answer;
import ac.bristol.bragaglia.xhail.core.Problem;

/**
 * @author stefano
 *
 */
public interface Strategy {

	public Collection<Answer> solve(Config config, Problem problem);

}
