/**
 * 
 */
package xhail.core.parser;

import java.io.IOException;
import java.io.InputStream;
import java.util.Collection;
import java.util.LinkedHashSet;
import java.util.Set;

import xhail.core.Logger;

/**
 * @author stefano
 *
 */
public class Splitter implements Context {

	private State state;

	private Set<String> statements;

	private InputStream stream;

	private final State initial;

	public Splitter(State initial) {
		if (null == initial)
			throw new IllegalArgumentException("Illegal 'initial' argument in Splitter(State): " + initial);
		this.initial = initial;
	}

	@Override
	public void append(final String statement) {
		if (null == statement)
			throw new IllegalArgumentException("Illegal 'statement' argument in Splitter.append(String): " + statement);
		if (null != statement && !statement.isEmpty())
			statements.add(statement);
	}

	@Override
	public Collection<String> parse(InputStream stream) {
		statements = new LinkedHashSet<>();
		this.stream = stream;
		setState(initial);
		boolean finished = false;
		while (!finished)
			finished = state.process(this);
		return statements;
	}

	@Override
	public int read() {
		try {
			if (null == stream)
				return -1;
			return stream.read();
		} catch (IOException e) {
			Logger.error("cannot read for the input stream");
			return -1;
		}
	}

	@Override
	public void setState(final State next) {
		if (null == next)
			throw new IllegalArgumentException("Illegal 'next' argument in Splitter.setState(State): " + next);
		state = next;
	}

}
