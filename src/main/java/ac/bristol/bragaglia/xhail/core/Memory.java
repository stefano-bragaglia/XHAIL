/**
 * 
 */
package ac.bristol.bragaglia.xhail.core;

import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.Map;
import java.util.Set;

import ac.bristol.bragaglia.xhail.predicates.Atom;
import ac.bristol.bragaglia.xhail.predicates.Builder;

/**
 * @author stefano
 *
 */
public class Memory {

	private Map<Atom, Set<Atom>> map;

	public Memory() {
		this.map = new HashMap<>();
		assert invariant() : "Illegal state in Memory()";
	}

	public Memory(Memory memory) {
		if (null == memory)
			throw new IllegalArgumentException("Illegal 'memory' argument in Memory(Memory): " + memory);
		this.map = new HashMap<>();
		this.append(memory);
		assert invariant() : "Illegal state in Memory(Memory)";
	}

	/**
	 * Stores the given value as item of the given type inside this memory.
	 * 
	 * @param type
	 *            the type of the value to add to the memory
	 * @param value
	 *            the value to add to the memory
	 */
	public void append(Atom type, Atom value) {
		if (null == type)
			throw new IllegalArgumentException("Illegal 'type' argument in Memory.append(Atom, Atom): " + type);
		if (null == value)
			throw new IllegalArgumentException("Illegal 'value' argument in Memory.append(Atom, Atom): " + value);
		Set<Atom> set = map.get(type);
		if (null == set) {
			set = new HashSet<>();
			map.put(type, set);
		}
		set.add(value);
		assert invariant() : "Illegal state in Memory.append(Atom, Atom)";
	}

	/**
	 * Appends the content of the <code>source</code> map of variables into the
	 * <code>target</code> map of variables.
	 * <p>
	 * These maps are actually maps of sets, meaning that the <code>Atom</code>
	 * key recalls a type and the <code>Set&lt;Atom&gt;</code> value is the set
	 * of actual values for that type. Notice that, by using sets, it avoids
	 * duplications by default.
	 * 
	 * @param memory
	 */
	public void append(Memory memory) {
		if (null == memory)
			throw new IllegalArgumentException("Illegal 'memory' argument in Memory.append(Memory): " + memory);
		for (Atom key : memory.map.keySet()) {
			Set<Atom> set = map.get(key);
			if (null == set) {
				set = new LinkedHashSet<>();
				map.put(key, set);
			}
			set.addAll(memory.map.get(key));
		}
		assert invariant() : "Illegal state in Memory.append(Memory)";
	}

	/**
	 * Checks whether the given value of the given type is contained in this
	 * memory.
	 * 
	 * @param type
	 *            the type of the value to search
	 * @param value
	 *            the value to search
	 * @return <code>true</code> if the given value of the given type is
	 *         contained in the given memory, <code>false</code> otherwise
	 */
	public boolean contains(Atom type, Atom value) {
		if (null == type)
			throw new IllegalArgumentException("Illegal 'type' argument in Memory.contains(Atom, Atom): " + type);
		if (null == value)
			throw new IllegalArgumentException("Illegal 'value' argument in Memory.contains(Atom, Atom): " + value);
		boolean result = map.containsKey(type) && map.get(type).contains(value);
		assert invariant() : "Illegal state in Memory.contains(Atom, Atom)";
		return result;
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
		Memory other = (Memory) obj;
		if (map == null) {
			if (other.map != null)
				return false;
		} else if (!map.equals(other.map))
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
		result = prime * result + ((map == null) ? 0 : map.hashCode());
		return result;
	}

	/**
	 * Invariant check against the internal state.
	 * 
	 * @return <code>true</code> if this instance's state is consistent,
	 *         <code>false</code> otherwise
	 */
	private boolean invariant() {
		return (null != map);
	}

	public boolean isEmpty() {
		boolean result = map.isEmpty();
		assert invariant() : "Illegal state in Memory.isEmpty()";
		return result;
	}

	public boolean isNew(Atom value) {
		if (null == value)
			throw new IllegalArgumentException("Illegal 'value' argument in Memory.isNew(Atom): " + value);
		boolean result = false;
		Iterator<Set<Atom>> iterator = map.values().iterator();
		while (!result && iterator.hasNext())
			result = iterator.next().contains(value);
		assert invariant() : "Illegal state in Memory.isNew(Atom)";
		return result;
	}

	public void populate(Atom fact, Collection<Atom> types) {
		if (null == fact)
			throw new IllegalArgumentException("Illegal 'fact' argument in Memory.populate(Atom, Collection<Atom>): " + fact);
		if (null == types)
			throw new IllegalArgumentException("Illegal 'types' argument in Memory.populate(Atom, Collection<Atom>): " + types);
		int arity = fact.arity();
		Atom type = Builder.get(fact.name()).build();
		if (arity > 0) {
			if (1 == arity && types.contains(type))
				append(type, fact.get(0));
			else
				for (Atom term : fact)
					populate(term, types);
		}
		assert invariant() : "Illegal state in Memory.populate(Atom, Collection<Atom>)";
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see java.lang.Object#toString()
	 */
	@Override
	public String toString() {
		return "Memory [map=" + map + "]";
	}

	public Collection<Atom> values(Atom type) {
		if (null == type)
			throw new IllegalArgumentException("Illegal 'type' argument in Memory.values(Atom): " + type);
		Set<Atom> result = map.containsKey(type) ? map.get(type) : Collections.emptySet();
		assert invariant() : "Illegal state in Memory.values(Atom)";
		return result;
	}

}
