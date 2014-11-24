/**
 * 
 */
package xhail.core.parser;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.Collection;
import java.util.LinkedHashSet;
import java.util.Set;

import xhail.core.Logger;

/**
 * @author stefano
 *
 */
public class Splitter implements Context {

	public static void main(String[] args) {
		try {
			Context context = new Splitter();
			Path path = Paths.get("penguins.lp");
			InputStream stream = new FileInputStream(path.toFile());
			Collection<String> statements = context.parse(stream);
			for (String statement : statements)
				System.out.println("- " + statement);
		} catch (FileNotFoundException e) {
			Logger.error("can't find 'penguins.lp'");
		}
		System.out.println("Done.");
	}

	private State state;

	private Set<String> statements;

	private InputStream stream;

	public Splitter() {
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
		setState(States.INITIAL);
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
