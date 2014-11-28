/**
 * 
 */
package xhail.core.entities;

import java.util.Arrays;

/**
 * @author stefano
 *
 */
public class Values implements Comparable<Values> {

	private final String source;

	private final int[] values;

	public Values() {
		this.source = "" + Integer.MAX_VALUE;
		this.values = new int[1];
		this.values[0] = Integer.MAX_VALUE;
	}

	public Values(String values) {
		if (null == values || (values = values.trim()).isEmpty())
			throw new IllegalArgumentException("Illegal 'values' argument in Values(String): " + values);
		try {
			this.source = values;
			String[] converted = values.split(" ");
			this.values = new int[converted.length];
			for (int i = 0; i < converted.length; i++)
				this.values[i] = Integer.parseInt(converted[i]);
		} catch (NumberFormatException e) {
			throw new IllegalArgumentException("Illegal 'values' argument in Values(String): " + values);
		}
	}

	@Override
	public int compareTo(Values o) {
		int result = 0;
		for (int i = 0; 0 == result && i < Math.min(values.length, o.values.length); i++)
			result = Integer.compare(values[i], o.values[i]);
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Values other = (Values) obj;
		if (source == null) {
			if (other.source != null)
				return false;
		} else if (!source.equals(other.source))
			return false;
		if (!Arrays.equals(values, other.values))
			return false;
		return true;
	}

	public final int getValue(int index) {
		if (index < 0 || index >= values.length)
			throw new IndexOutOfBoundsException("Illegal 'index' argument in Values.getValue(): " + index);
		return values[index];
	}

	public final int[] getValues() {
		return values;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((source == null) ? 0 : source.hashCode());
		result = prime * result + Arrays.hashCode(values);
		return result;
	}

	public final boolean matches(String values) {
		if (null == values || (values = values.trim()).isEmpty())
			throw new IllegalArgumentException("Illegal 'values' argument in Values.matches(String): " + values);
		return source.equals(values);
	}

	public final int size() {
		return values.length;
	}

	@Override
	public String toString() {
		return source;
	}

}
