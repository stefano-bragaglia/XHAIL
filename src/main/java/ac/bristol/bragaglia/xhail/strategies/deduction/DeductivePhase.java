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
public interface DeductivePhase {

	public Kernel solve(Config config, Grounding grounding);

}
