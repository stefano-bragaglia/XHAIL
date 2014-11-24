/**
 * 
 */
package xhail.core;

/**
 * @author stefano
 *
 */
public interface Buildable<T> {

	/**
	 * Returns the equivalent instance of <code>T</code>.
	 * 
	 * @return the equivalent instance of <code>T</code>
	 */
	public T build();

}
