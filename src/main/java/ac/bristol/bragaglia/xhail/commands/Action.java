package ac.bristol.bragaglia.xhail.commands;

import java.io.OutputStream;

public interface Action {

	public abstract OutputStream getInput();

	public int execute();

}