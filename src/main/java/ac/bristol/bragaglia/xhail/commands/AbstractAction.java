/**
 * 
 */
package ac.bristol.bragaglia.xhail.commands;

import java.io.PrintStream;
import java.util.Collection;
import java.util.HashSet;
import java.util.Set;

/**
 * @author stefano
 *
 */
public abstract class AbstractAction implements Action {

	private Set<Action> actions;

	protected PrintStream error;

	public AbstractAction(final PrintStream error) {
		if (null == error)
			throw new IllegalArgumentException("Illegal 'error' argument in AbstractAction(PrintError): " + error);
		this.actions = new HashSet<>();
		this.error = error;
		assert invariant() : "Illegal state in AbstractAction(PrintStream)";
	}

	public void attach(Action action) {
		if (null == action)
			throw new IllegalArgumentException("Illegal 'action' argument in AbstractAction.attach(Action): " + action);
		actions.add(action);
		assert invariant() : "Illegal state in AbstractAction.attach(Action)";
	}

	public void detach(Action action) {
		if (null == action)
			throw new IllegalArgumentException("Illegal 'command' argument in AbstractAction.detach(Action): " + action);
		actions.remove(action);
		assert invariant() : "Illegal state in AbstractAction.detach(Action)";
	}

	public PrintStream getError() {
		assert invariant() : "Illegal state in AbstractAction.getError()";
		return error;
	}

	protected boolean invariant() {
		return (null != actions && null != error);
	}

	public Collection<Action> next() {
		assert invariant() : "Illegal state in AbstractAction.next()";
		return actions;
	}
}
