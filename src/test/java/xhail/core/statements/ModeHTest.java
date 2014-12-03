/**
 * 
 */
package xhail.core.statements;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertNotNull;

import org.junit.BeforeClass;
import org.junit.Test;

import xhail.core.terms.Placemarker;
import xhail.core.terms.Placemarker.Type;
import xhail.core.terms.Scheme;

/**
 * @author stefano
 *
 */
public class ModeHTest {

	private static ModeH mode1;

	private static final String FLUENT = "fluent";

	private static final String FLUENT_V1 = "fluent(V1)";

	private static final String HAPPENS = "happens";

	private static final String HOLDS_AT = "holdsAt";

	private static Scheme scheme1;

	private static Scheme scheme2;

	private static final String SUGAR = "sugar";

	private static final String SUGAR_V1 = "sugar(V1)";

	private static final String TIME = "time";

	private static final String TIME_V2 = "time(V2)";

	private static final String USE = "use";

	private static final String V1 = "V1";

	private static final String V2 = "V2";

	private static final int L1 = 0;

	private static final int U1 = 5;

	private static final int P1 = 2;

	// private static final int W1 = 1;

	/**
	 * @throws java.lang.Exception
	 */
	@BeforeClass
	public static void setUpBeforeClass() throws Exception {
		// #modeh happens(use($sugar), +time) :0-5 @2.
		scheme1 = new Scheme.Builder(HAPPENS) //
				.addTerm(new Scheme.Builder(USE).addTerm(//
						new Placemarker.Builder(SUGAR).setType(Type.CONSTANT).build()).build()) //
				.addTerm(new Placemarker.Builder(TIME).setType(Type.INPUT).build()) //
				.build();
		mode1 = new ModeH.Builder(scheme1).setLower(L1).setUpper(U1).setPriority(P1).build();
		// #modeb holdsAt($fluent, +time).
		scheme2 = new Scheme.Builder(HOLDS_AT) //
				.addTerm(new Placemarker.Builder(FLUENT).setType(Type.CONSTANT).build()) //
				.addTerm(new Placemarker.Builder(TIME).setType(Type.INPUT).build()) //
				.build();
	}

	private static final String[] LINE_1 = { //
		"% #modeh happens(use($sugar),+time) :0-5 @2.", //
		"0 { abduced_happens(use(V1),V2) :sugar(V1) :time(V2) } 5.", //
		"#minimize[ abduced_happens(use(V1),V2) =1 @2 :sugar(V1) :time(V2) ].",
		"happens(use(V1),V2):-abduced_happens(use(V1),V2),sugar(V1),time(V2)."//
	};

	@Test
	public void testClauses1() {
		String[] result = mode1.asClauses();
		for (String string : result)
			System.out.println(string);
		assertNotNull("Mode1: clauses can not be null", result);
		assertEquals("Mode1: clauses must have size 4", LINE_1.length, result.length);
		for (int i = 0; i < LINE_1.length; i++)
			assertEquals(String.format("Mode1: clause #%d must be '%s'", i, LINE_1[i]), LINE_1[i], result[i]);
	}

}
