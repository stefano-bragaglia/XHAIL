/**
 * 
 */
package ac.bristol.bragaglia.xhail.config;

/**
 * @author stefano
 *
 */
public class Clock {

	private boolean active;

	private long elapsed;

	private long time;
	
	public Clock() {
		this.reset();
	}

	public long getTime() {
		if (active)
			return time + System.currentTimeMillis() - elapsed;
		else
			return time;
	}

	public boolean isActive() {
		return active;
	}

	public void reset() {
		this.active = false;
		this.elapsed = 0;
		this.time = 0;
	}

	public void start() {
		if (!active) {
			active = true;
			elapsed = System.currentTimeMillis();
		}
	}

	public void stop() {
		if (active) {
			time += System.currentTimeMillis() - elapsed;
			active = false;
		}
	}

	/* (non-Javadoc)
	 * @see java.lang.Object#toString()
	 */
	@Override
	public String toString() {
		return "Clock [" + (elapsed + time) + (active? "+": "") + "]";
	}



}
