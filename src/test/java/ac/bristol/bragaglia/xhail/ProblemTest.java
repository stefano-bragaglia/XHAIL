/**
 * 
 */
package ac.bristol.bragaglia.xhail;

import static org.junit.Assert.fail;

import org.junit.After;
import org.junit.Before;
import org.junit.BeforeClass;
import org.junit.Test;

import ac.bristol.bragaglia.xhail.config.Config;
import ac.bristol.bragaglia.xhail.problem.Program;

/**
 * @author stefano
 *
 */
public class ProblemTest {

	private static final String GRINGO = "/Library/Gringo/gringo";
	private static final String CLASP = "/Library/Clasp/clasp";

	private static Config config;

	private Program program;

	/**
	 * @throws java.lang.Exception
	 */
	@BeforeClass
	public static void setUpBeforeClass() throws Exception {
		config = new Config(GRINGO, CLASP, true);
	}

	/**
	 * @throws java.lang.Exception
	 */
	@Before
	public void setUp() throws Exception {
		program = new Program(config);
		program.load("ac/bristol/bragaglia/xhail/abstract.lp");
	}

	/**
	 * @throws java.lang.Exception
	 */
	@After
	public void tearDown() throws Exception {
	}

	@Test
	public void test() {
		fail("Not yet implemented");
	}

}
