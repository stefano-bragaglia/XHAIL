/**
 * 
 */
package xhail;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;

/**
 * @author stefano
 *
 */
public class Streams {

	public static void main(String[] args) throws IOException {

		Path path = Paths.get("examples/toys/ec.lp").toAbsolutePath();

		InputStream stream = Files.newInputStream(path);

//		BufferedReader reader = Files.newBufferedReader(path);
		BufferedReader reader = new BufferedReader(new InputStreamReader(stream));
		
		System.out.println(reader.readLine());
		System.out.println(reader.readLine());
		System.out.println(reader.readLine());

		for (int i = 0; i < 100; i++)
			System.out.print((char) stream.read());
	}

}
