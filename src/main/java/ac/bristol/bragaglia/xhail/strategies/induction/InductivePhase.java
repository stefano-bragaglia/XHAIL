/**
 * 
 */
package ac.bristol.bragaglia.xhail.strategies.induction;

import java.util.Collection;

import ac.bristol.bragaglia.xhail.config.Config;
import ac.bristol.bragaglia.xhail.core.Hypothesis;
import ac.bristol.bragaglia.xhail.core.Kernel;

/**
 * @author stefano
 *
 */
public interface InductivePhase {

	public Collection<Hypothesis> solve(Config config, Kernel kernel);

}
