/**
 * 
 */
package xhail.core.entities;

import java.io.OutputStream;

/**
 * @author stefano
 *
 */
public interface Solvable {

	/**
	 * @param stream
	 * @return
	 */
	public boolean save(int iter, OutputStream stream);

}
