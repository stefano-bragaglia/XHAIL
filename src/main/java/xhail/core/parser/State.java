/**
 * 
 */
package xhail.core.parser;


/**
 * @author stefano
 *
 */
public interface State {

	/**
	 * @param context
	 * @return
	 */
	public boolean process(Context context);

}
