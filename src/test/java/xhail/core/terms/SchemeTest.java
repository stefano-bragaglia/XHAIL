/**
 * 
 */
package xhail.core.terms;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertNotNull;

import org.junit.BeforeClass;
import org.junit.Test;

import xhail.core.terms.Placemarker.Type;

/**
 * @author stefano
 *
 */
public class SchemeTest {

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
	
	

	/**
	 * @throws java.lang.Exception
	 */
	@BeforeClass
	public static void setUpBeforeClass() throws Exception {
		// #modeh happens(use($sugar), +time).
		scheme1 = new Scheme.Builder(HAPPENS) //
				.addTerm(new Scheme.Builder(USE).addTerm(//
						new Placemarker.Builder(SUGAR).setType(Type.CONSTANT).build()).build()) //
				.addTerm(new Placemarker.Builder(TIME).setType(Type.INPUT).build()) //
				.build();
		// #modeb holdsAt($fluent, +time).
		scheme2 = new Scheme.Builder(HOLDS_AT) //
				.addTerm(new Placemarker.Builder(FLUENT).setType(Type.CONSTANT).build()) //
				.addTerm(new Placemarker.Builder(TIME).setType(Type.INPUT).build()) //
				.build();
		
		
	}

	@Test
	public void testPlacemarkers1() {
		Placemarker[] result = scheme1.getPlacemarkers();
		assertNotNull("Scheme1: placemarkers can not be null", result);
		assertEquals("Scheme1: placemarkers must have size 2", 2, result.length);
		assertEquals("Scheme1: first placemarker must be CONSTANT", Type.CONSTANT, result[0].getType());
		assertEquals("Scheme1: first placemarker must be 'sugar'", SUGAR, result[0].getIdentifier());
		assertEquals("Scheme1: second placemarker must be CONSTANT", Type.INPUT, result[1].getType());
		assertEquals("Scheme1: second placemarker must be 'time'", TIME, result[1].getIdentifier());
	}

	@Test
	public void testPlacemarkers2() {
		Placemarker[] result = scheme2.getPlacemarkers();
		assertNotNull("Scheme2: placemarkers can not be null", result);
		assertEquals("Scheme2: placemarkers must have size 2", 2, result.length);
		assertEquals("Scheme2: first placemarker must be CONSTANT", Type.CONSTANT, result[0].getType());
		assertEquals("Scheme2: first placemarker must be 'fluent'", FLUENT, result[0].getIdentifier());
		assertEquals("Scheme2: second placemarker must be CONSTANT", Type.INPUT, result[1].getType());
		assertEquals("Scheme2: second placemarker must be 'time'", TIME, result[1].getIdentifier());
	}

	@Test
	public void testTypes1() {
		String[] result = scheme1.getTypes();
		assertNotNull("Scheme1: types can not be null", result);
		assertEquals("Scheme1: types must have size 2", 2, result.length);
		assertEquals("Scheme1: first type must be 'sugar(V1)'", SUGAR_V1, result[0]);
		assertEquals("Scheme1: second type must be 'time(V2)'", TIME_V2, result[1]);
	}

	@Test
	public void testTypes2() {
		String[] result = scheme2.getTypes();
		assertNotNull("Scheme2: types can not be null", result);
		assertEquals("Scheme2: types must have size 2", 2, result.length);
		assertEquals("Scheme2: first type must be 'fluent(V1)'", FLUENT_V1, result[0]);
		assertEquals("Scheme2: second type must be 'time(V2)'", TIME_V2, result[1]);
	}

	@Test
	public void testVariables1() {
		String[] result = scheme1.getVariables();
		assertNotNull("Scheme1: variables can not be null", result);
		assertEquals("Scheme1: variables must have size 2", 2, result.length);
		assertEquals("Scheme1: first variable must be 'V1'", V1, result[0]);
		assertEquals("Scheme1: second variable must be 'V2'", V2, result[1]);
	}

	@Test
	public void testVariables2() {
		String[] result = scheme2.getVariables();
		assertNotNull("Scheme2: variables can not be null", result);
		assertEquals("Scheme2: variables must have size 2", 2, result.length);
		assertEquals("Scheme2: first variable must be 'V1'", V1, result[0]);
		assertEquals("Scheme2: second variable must be 'V2'", V2, result[1]);
	}

}
