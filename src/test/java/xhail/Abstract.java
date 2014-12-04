/**
 * 
 */
package xhail;

import java.nio.file.Paths;
import java.util.Collection;

import xhail.core.Config;
import xhail.core.Dialler;
import xhail.core.Utils;
import xhail.core.entities.Grounding;
import xhail.core.entities.Problem;
import xhail.core.terms.Clause;

/**
 * @author stefano
 *
 */
public class Abstract {

	/**
	 * @param args
	 */
	public static void main(String[] args) {
		Config config = new Config.Builder() //
				.setAll(true).setBlind(true).setDebug(true).setFull(true).setKill("5").setMute(false) //
				.setGringo("/Library/Gringo/gringo").setClasp("/Library/Clasp/clasp").build();

		Problem problem = new Problem.Builder(config).parse(Paths.get("examples/toys/ec.lp")).build();

		Utils.dump(problem, System.err);

		Dialler dialer = new Dialler.Builder(config, problem).build();
		
		for (Collection<String> answer : dialer.execute().getValue()) {
			Grounding grounding = new Grounding.Builder(problem).parse(answer).build();
						
			System.out.println(grounding.getKernel().length);
			
			for (Clause clause : grounding.getKernel())
				System.out.println(clause);

			System.out.println(grounding.getGeneralisation().length);

			for (Clause clause : grounding.getGeneralisation())
				System.out.println(clause);
			
//			dialer = new Dialler.Builder(config, grounding).build();
//			
//			for (String result : dialer.execute().getValue()) {
//				Hypothesis hypothesis = new Hypothesis.Builder(grounding).addAtoms(Parser.parseAnswer(result)).build();
//				
//				System.out.println(hypothesis.getHypotheses().length);
//				
//				for (Clause clause : hypothesis.getHypotheses())
//					System.out.println(clause);
//				
//			}
				
		}

		// Answers answers = problem.solve();
		// System.out.println(answers);
	}

}
