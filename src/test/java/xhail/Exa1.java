/**
 * 
 */
package xhail;

import java.nio.file.Paths;
import java.util.Collection;
import java.util.Map;

import xhail.core.Config;
import xhail.core.Dialler;
import xhail.core.entities.Grounding;
import xhail.core.entities.Problem;
import xhail.core.entities.Values;

/**
 * @author stefano
 *
 */
public class Exa1 {

	public static String[] command = { "/Library/Gringo/gringo", ">", };
	
	/**
	 * @param args
	 */
	public static void main(String[] args) {
		Config config = new Config.Builder() //
				.setAll(true).setBlind(true).setDebug(false).setFull(true).setKill("5").setMute(false) //
				.setGringo("/Library/Gringo/gringo").setClasp("/Library/Clasp/clasp").build();
		
		Problem problem = new Problem.Builder(config).parse(Paths.get("examples/craig/mwe_ext.lp")).build();

		Dialler dialler = new Dialler.Builder(config, problem).build();

		Map.Entry<Values, Collection<Collection<String>>> result = dialler.execute();

		for (Collection<String> answer : result.getValue()) {
			Grounding grounding = new Grounding.Builder(problem).parse(answer).build();
			System.out.println(grounding);
		}

		System.out.println("Done.");
	}

}
