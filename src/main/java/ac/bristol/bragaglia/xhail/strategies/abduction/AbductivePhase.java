/**
 * 
 */
package ac.bristol.bragaglia.xhail.strategies.abduction;

import java.util.Collection;

import ac.bristol.bragaglia.xhail.config.Config;
import ac.bristol.bragaglia.xhail.core.Grounding;
import ac.bristol.bragaglia.xhail.core.Problem;

/**
 * @author stefano
 *
 */
public interface AbductivePhase {

	public Collection<Grounding> solve(Config config, Problem problem);

}
