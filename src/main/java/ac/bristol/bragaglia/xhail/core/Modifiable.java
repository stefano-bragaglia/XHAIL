/**
 * 
 */
package ac.bristol.bragaglia.xhail.core;

/**
 * @author stefano
 *
 */
public abstract class Modifiable {

	private boolean modified;

	public Modifiable() {
		this.modified = true;
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see java.lang.Object#equals(java.lang.Object)
	 */
	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Modifiable other = (Modifiable) obj;
		if (modified != other.modified)
			return false;
		return true;
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see java.lang.Object#hashCode()
	 */
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + (modified ? 1231 : 1237);
		return result;
	}

	public boolean isModified() {
		return modified;
	}

	protected void save() {
		modified = false;
	}

	protected void update() {
		modified = true;
	}

}
