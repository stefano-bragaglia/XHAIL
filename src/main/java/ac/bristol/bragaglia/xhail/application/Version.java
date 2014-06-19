/**
 * 
 */
package ac.bristol.bragaglia.xhail.application;

/**
 * This class retrieves the <code>title</code> and <code>version</code>
 * information from the jar's manifest and makes them available to the main
 * application.
 *
 * @author stefano
 */
public class Version {

	/**
	 * The singleton instance of this class.
	 */
	private static Version instance;

	/**
	 * Returns the singleton instance of this class.
	 * 
	 * @return the singleton instance of this class
	 */
	public static Version get() {
		if (null == instance)
			instance = new Version();
		return instance;
	}

	/**
	 * This utility method checks where the given string is a valid natural
	 * number (a non-<code>null</code> non-empty string containing only digits).
	 * 
	 * @param str
	 *            the string to test
	 * @return <code>true</code> if the given string is a natural number,
	 *         <code>false</code> otherwise
	 */
	private static boolean isNumber(String str) {
		if (str == null)
			return false;
		int length = str.length();
		if (length == 0)
			return false;
		char c;
		for (int i = 0; i < length; i++)
			if ((c = str.charAt(i)) < '0' || c > '9')
				return false;
		return true;
	}

	/**
	 * The build number.
	 */
	private int build;

	/**
	 * The major version number.
	 */
	private int major;

	/**
	 * The minor version number.
	 */
	private int minor;

	/**
	 * The application title.
	 */
	private String title;

	/**
	 * Default constructor.
	 * 
	 * It initializes <code>build</code>, <code>major</code>, <code>minor</code>
	 * and <code>title</code> to their respective default values (<code>0</code>
	 * , <code>0</code>, <code>0</code> and <code>\<untitled\></code>) and calls
	 * the internal <code>setup()</code> method to load the values present in
	 * the jar's manifest (if any).
	 */
	private Version() {
		this.build = 0;
		this.major = 0;
		this.minor = 0;
		this.title = "<untitled>";
		this.setup();
		assert invariant() : "Illegal state in Version()";
	}

	/**
	 * Returns the build number.
	 * 
	 * @return the build number
	 */
	public int getBuild() {
		assert invariant() : "Illegal state in Version.getBuild()";
		return build;
	}

	/**
	 * Returns the major version number.
	 * 
	 * @return the major version number
	 */
	public int getMajor() {
		assert invariant() : "Illegal state in Version.getMajor()";
		return major;
	}

	/**
	 * Returns the minor version number.
	 * 
	 * @return the minor version number
	 */
	public int getMinor() {
		assert invariant() : "Illegal state in Version.getMinor()";
		return minor;
	}

	/**
	 * Returns the application title.
	 * 
	 * @return the application title
	 */
	public String getTitle() {
		assert invariant() : "Illegal state in Version.getTitle()";
		return title;
	}

	/**
	 * Invariant check against the internal state.
	 * 
	 * @return <code>true</code> if this instance's state is consistent,
	 *         <code>false</code> otherwise
	 */
	private boolean invariant() {
		return (build >= 0 && major >= 0 && minor >= 0 && null != title && !title.isEmpty());
	}

	/**
	 * Loads the values for <code>build</code>, <code>major</code>,
	 * <code>minor</code> and <code>title</code> from the jar's manifest (if
	 * any).
	 */
	private void setup() {
		Package p = this.getClass().getPackage();
		String value = p.getImplementationTitle();
		if (null != value && !(value = value.trim()).isEmpty())
			this.title = value;
		value = p.getImplementationVersion();
		if (null != value && !(value = value.trim()).isEmpty()) {
			String[] numbers = value.split("\\.");
			if (3 == numbers.length && isNumber(numbers[0]) && isNumber(numbers[1]) && isNumber(numbers[2])) {
				this.major = Integer.parseInt(numbers[0]);
				this.minor = Integer.parseInt(numbers[1]);
				this.build = Integer.parseInt(numbers[2]);
			}
		}
		assert invariant() : "Illegal state in Version.setup()";
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see java.lang.Object#toString()
	 */
	@Override
	public String toString() {
		String result = String.format("%s version %d.%d.%d", title, major, minor, build);
		assert invariant() : "Illegal state in Version.toString()";
		return result;
	}

}
