/**
 * 
 */
package xhail.core.parser;

import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

import xhail.core.Logger;
import xhail.core.statements.Display;
import xhail.core.statements.Example;
import xhail.core.statements.ModeB;
import xhail.core.statements.ModeH;
import xhail.core.terms.Atom;
import xhail.core.terms.Number;
import xhail.core.terms.Placemarker;
import xhail.core.terms.Placemarker.Type;
import xhail.core.terms.Quotation;
import xhail.core.terms.Scheme;
import xhail.core.terms.SchemeTerm;
import xhail.core.terms.Term;
import xhail.core.terms.Variable;

/**
 * @author stefano
 *
 */
public class Parser {

	public static class ParserErrorException extends Exception {
		private static final long serialVersionUID = 506164049971528165L;

		public ParserErrorException(String message) {
			super(message);
		}
	}

	public static class StringIterator implements Iterator<Character> {
		private int pos = -1;
		private final String source;

		public StringIterator(String source) {
			this.source = source;
		}

		@Override
		public boolean hasNext() {
			return null == source ? false : source.length() > 1 + pos;
		}

		@Override
		public Character next() {
			return hasNext() ? source.charAt(++pos) : null;
		}

		public void pushBack() {
			if (pos > -1)
				pos -= 1;
		}
	}

	public static Collection<Atom> parseAnswer(String source) {
		if (null == source)
			throw new IllegalArgumentException("Illegal 'source' argument in Parser.parseAnswer(String): " + source);
		try {
			Parser parser = new Parser(source);
			Collection<Atom> result = parser.parseAnswer();
			parser.parseEOF();
			return result;
		} catch (ParserErrorException e) {
			Logger.error(e.getMessage());
			return null;
		}
	}

	public static Display parseDisplay(String source) {
		if (null == source)
			throw new IllegalArgumentException("Illegal 'source' argument in Parser.parseDisplay(String): " + source);
		try {
			Parser parser = new Parser(source);
			Display result = parser.parseDisplay();
			parser.parseEOF();
			return result;
		} catch (ParserErrorException e) {
			Logger.error(e.getMessage());
			return null;
		}
	}

	public static Example parseExample(String source) {
		if (null == source)
			throw new IllegalArgumentException("Illegal 'source' argument in Parser.parseExample(String): " + source);
		try {
			Parser parser = new Parser(source);
			Example result = parser.parseExample();
			parser.parseEOF();
			return result;
		} catch (ParserErrorException e) {
			Logger.error(e.getMessage());
			return null;
		}
	}

	public static Atom parseToken(String source) {
		if (null == source)
			throw new IllegalArgumentException("Illegal 'source' argument in Parser.parseToken(String): " + source);
		try {
			Parser parser = new Parser(source);
			Atom result = parser.parseGroundAtom();
			parser.parseEOF();
			return result;
		} catch (ParserErrorException e) {
			Logger.error(e.getMessage());
			return null;
		}
	}

	public static ModeB parseModeB(String source) {
		if (null == source)
			throw new IllegalArgumentException("Illegal 'source' argument in Parser.parseModeB(String): " + source);
		try {
			Parser parser = new Parser(source);
			ModeB result = parser.parseModeB();
			parser.parseEOF();
			return result;
		} catch (ParserErrorException e) {
			Logger.error(e.getMessage());
			return null;
		}
	}

	public static ModeH parseModeH(String source) {
		if (null == source)
			throw new IllegalArgumentException("Illegal 'source' argument in Parser.parseModeH(String): " + source);
		try {
			Parser parser = new Parser(source);
			ModeH result = parser.parseModeH();
			parser.parseEOF();
			return result;
		} catch (ParserErrorException e) {
			Logger.error(e.getMessage());
			return null;
		}
	}

	private Character current;

	private final Iterator<Character> iterator;

	private final String source;

	public Parser(String source) {
		if (null == source)
			throw new IllegalArgumentException("Illegal 'source' argument in Parser.Parser(String): " + source);
		this.source = source;
		this.iterator = new StringIterator(this.source);
		this.current = this.iterator.next();
	}

	public final String getSource() {
		return source;
	}

	private Set<Atom> parseAnswer() throws ParserErrorException {
		skip();
		Set<Atom> result = new HashSet<>();
		while (null != current && Character.isLowerCase(current)) {
			result.add(parseGroundAtom());
			skip();
		}
		return result;
	}

	private void parseAt() throws ParserErrorException {
		skip();
		if (null == current)
			throw new ParserErrorException("expected '@' but EOF found in '" + source + "'");
		if ('@' != current)
			throw new ParserErrorException("expected '@' but '" + current + "' found in '" + source + "'");
		current = iterator.next();
	}

	private Atom parseAtom() throws ParserErrorException {
		Atom.Builder result = new Atom.Builder(parseIdentifier());
		skip();
		if (null != current && '(' == current) {
			parseLeftParen();
			result.addTerm(parseTerm());
			skip();
			while (null != current && ',' == current) {
				parseComma();
				result.addTerm(parseTerm());
				skip();
			}
			parseRightParen();
		}
		return result.build();
	}

	private void parseColon() throws ParserErrorException {
		skip();
		if (null == current)
			throw new ParserErrorException("expected ':' but EOF found in '" + source + "'");
		if (':' != current)
			throw new ParserErrorException("expected ':' but '" + current + "' found in '" + source + "'");
		current = iterator.next();
	}

	private void parseComma() throws ParserErrorException {
		skip();
		if (null == current)
			throw new ParserErrorException("expected ',' but EOF found in '" + source + "'");
		if (',' != current)
			throw new ParserErrorException("expected ',' but '" + current + "' found in '" + source + "'");
		current = iterator.next();
	}

	private void parseDash() throws ParserErrorException {
		skip();
		if (null == current)
			throw new ParserErrorException("expected '-' but EOF found in '" + source + "'");
		if ('-' != current)
			throw new ParserErrorException("expected '-' but '" + current + "' found in '" + source + "'");
		current = iterator.next();
	}

	private Display parseDisplay() throws ParserErrorException {
		String identifier = parseIdentifier();
		parseSlash();
		if (null == current)
			throw new ParserErrorException("expected '0..9' but EOF found in '" + source + "'");
		if (!Character.isDigit(current))
			throw new ParserErrorException("expected '0..9' but '" + current + "' found in '" + source + "'");
		Number number = parseNumber();
		return new Display.Builder(identifier).setArity(number.getValue()).build();
	}

	private void parseEOF() throws ParserErrorException {
		skip();
		if (null != current)
			throw new ParserErrorException("expected EOF but '" + current + "' found in '" + source + "'");
	}

	private void parseEqual() throws ParserErrorException {
		skip();
		if (null == current)
			throw new ParserErrorException("expected '=' but EOF found in '" + source + "'");
		if ('=' != current)
			throw new ParserErrorException("expected '=' but '" + current + "' found in '" + source + "'");
		current = iterator.next();
	}

	private Example parseExample() throws ParserErrorException {
		Atom atom = parseGroundAtom();
		boolean negated = "not".equals(atom.getIdentifier());
		if (negated)
			atom = parseGroundAtom();
		Example.Builder result = new Example.Builder(atom).setNegated(negated);
		if (null != current && '=' == current) {
			parseEqual();
			result.setWeight(parseNumber().getValue());
		}
		if (null != current && '@' == current) {
			parseAt();
			result.setPriority(parseNumber().getValue());
		}
		return result.build();
	}

	private Atom parseGroundAtom() throws ParserErrorException {
		Atom.Builder result = new Atom.Builder(parseIdentifier());
		skip();
		if (null != current && '(' == current) {
			parseLeftParen();
			result.addTerm(parseGroundTerm());
			skip();
			while (null != current && ',' == current) {
				parseComma();
				result.addTerm(parseGroundTerm());
				skip();
			}
			parseRightParen();
		}
		return result.build();
	}

	private Term parseGroundTerm() throws ParserErrorException {
		skip();
		if (null == current)
			throw new ParserErrorException("expected 'TERM' but EOF found in '" + source + "'");
		if (Character.isLowerCase(current))
			return parseAtom();
		if (Character.isDigit(current) || '-' == current)
			return parseNumber();
		if ('\"' == current)
			return parseQuotation();
		throw new ParserErrorException("expected 'TERM' but '" + current + "' found in '" + source + "'");
	}

	private String parseIdentifier() throws ParserErrorException {
		skip();
		if (null == current)
			throw new ParserErrorException("expected 'a..z' but EOF found in '" + source + "'");
		if (!Character.isLowerCase(current))
			throw new ParserErrorException("expected 'a..z' but '" + current + "' found in '" + source + "'");
		String result = "";
		while (null != current && (Character.isLowerCase(current) || Character.isUpperCase(current) || Character.isDigit(current) || '_' == current)) {
			result += current;
			current = iterator.next();
		}
		return result;
	}

	private void parseLeftParen() throws ParserErrorException {
		skip();
		if (null == current)
			throw new ParserErrorException("expected '(' but EOF found in '" + source + "'");
		if ('(' != current)
			throw new ParserErrorException("expected '(' but '" + current + "' found in '" + source + "'");
		current = iterator.next();
	}

	private ModeB parseModeB() throws ParserErrorException {
		Scheme scheme = parseScheme();
		boolean negated = "not".equals(scheme.getIdentifier());
		if (negated)
			scheme = parseScheme();
		ModeB.Builder result = new ModeB.Builder(scheme).setNegated(negated);
		if (null != current && ':' == current) {
			parseColon();
			result.setUpper(parseNumber().getValue());
		}
		if (null != current && '=' == current) {
			parseEqual();
			result.setWeight(parseNumber().getValue());
		}
		if (null != current && '@' == current) {
			parseAt();
			result.setPriority(parseNumber().getValue());
		}
		return result.build();
	}

	private ModeH parseModeH() throws ParserErrorException {
		ModeH.Builder result = new ModeH.Builder(parseScheme());
		if (null != current && ':' == current) {
			parseColon();
			int value = parseNumber().getValue();
			if (null != current && '-' == current) {
				result.setLower(value);
				parseDash();
				result.setUpper(parseNumber().getValue());
			} else
				result.setUpper(value);
		}
		if (null != current && '=' == current) {
			parseEqual();
			result.setWeight(parseNumber().getValue());
		}
		if (null != current && '@' == current) {
			parseAt();
			result.setPriority(parseNumber().getValue());
		}
		return result.build();
	}

	private Number parseNumber() throws ParserErrorException {
		skip();
		if (null == current)
			throw new ParserErrorException("expected '-' or '0..9' but EOF found in '" + source + "'");
		boolean negative;
		if (negative = (current == '-')) {
			current = iterator.next();
			skip();
		}
		if (null == current)
			throw new ParserErrorException("expected '0..9' but EOF found in '" + source + "'");
		if (!Character.isDigit(current))
			throw new ParserErrorException("expected '0..9' but '" + current + "' found in '" + source + "'");
		int result = (current - '0');
		current = iterator.next();
		while (null != current && Character.isDigit(current)) {
			result = 10 * result + (current - '0');
			current = iterator.next();
		}
		return new Number.Builder(negative ? -result : result).build();
	}

	private Placemarker parsePlacemarker() throws ParserErrorException {
		skip();
		if (null == current)
			throw new ParserErrorException("expected 'TERM' but EOF found in '" + source + "'");
		Type type;
		if ('+' == current) {
			type = Type.INPUT;
			current = iterator.next();
		} else if ('-' == current) {
			type = Type.OUTPUT;
			current = iterator.next();
		} else if ('$' == current) {
			type = Type.CONSTANT;
			current = iterator.next();
		} else
			throw new ParserErrorException("expected '+', '-' or '$' but '" + current + "' found in '" + source + "'");
		return new Placemarker.Builder(parseIdentifier()).setType(type).build();
	}

	private Quotation parseQuotation() throws ParserErrorException {
		skip();
		if (null == current)
			throw new ParserErrorException("expected '\"' but EOF found in '" + source + "'");
		if ('\"' != current)
			throw new ParserErrorException("expected '\"' but '" + current + "' found in '" + source + "'");
		String result = "" + current;
		current = iterator.next();
		while (null != current && '\"' != current) {
			result += current;
			current = iterator.next();
		}
		if (null == current)
			throw new ParserErrorException("expected '\"' but EOF found in '" + source + "'");
		result += current;
		current = iterator.next();
		return new Quotation.Builder(result).build();
	}

	private void parseRightParen() throws ParserErrorException {
		skip();
		if (null == current)
			throw new ParserErrorException("expected ')' but EOF found in '" + source + "'");
		if (')' != current)
			throw new ParserErrorException("expected ')' but '" + current + "' found in '" + source + "'");
		current = iterator.next();
	}

	private Scheme parseScheme() throws ParserErrorException {
		Scheme.Builder result = new Scheme.Builder(parseIdentifier());
		skip();
		if (null != current && '(' == current) {
			parseLeftParen();
			result.addTerm(parseSchemeTerm());
			skip();
			while (null != current && ',' == current) {
				parseComma();
				result.addTerm(parseSchemeTerm());
				skip();
			}
			parseRightParen();
		}
		return result.build();
	}

	private SchemeTerm parseSchemeTerm() throws ParserErrorException {
		skip();
		if (null == current)
			throw new ParserErrorException("expected 'SCHEMETERM' but EOF found in '" + source + "'");
		if (Character.isLowerCase(current))
			return parseScheme();
		if ('+' == current || '-' == current || '$' == current)
			return parsePlacemarker();
		if (Character.isDigit(current) || '-' == current)
			return parseNumber();
		if ('\"' == current)
			return parseQuotation();
		throw new ParserErrorException("expected 'SCHEMETERM' but '" + current + "' found in '" + source + "'");
	}

	private void parseSlash() throws ParserErrorException {
		skip();
		if (null == current)
			throw new ParserErrorException("expected '/' but EOF found in '" + source + "'");
		if ('/' != current)
			throw new ParserErrorException("expected '/' but '" + current + "' found in '" + source + "'");
		current = iterator.next();
	}

	private Term parseTerm() throws ParserErrorException {
		skip();
		if (null == current)
			throw new ParserErrorException("expected 'TERM' but EOF found in '" + source + "'");
		if (Character.isLowerCase(current))
			return parseAtom();
		if (Character.isUpperCase(current) || '_' == current)
			return parseVariable();
		if (Character.isDigit(current) || '-' == current)
			return parseNumber();
		if ('\"' == current)
			return parseQuotation();
		throw new ParserErrorException("expected 'TERM' but '" + current + "' found in '" + source + "'");
	}

	private Variable parseVariable() throws ParserErrorException {
		skip();
		if (null == current)
			throw new ParserErrorException("expected 'A..Z' or '_' but EOF found in '" + source + "'");
		if (!Character.isUpperCase(current) && '_' != current)
			throw new ParserErrorException("expected 'A..Z' or '_' but '" + current + "' found in '" + source + "'");
		String result = "";
		while (null != current && (Character.isLowerCase(current) || Character.isUpperCase(current) || Character.isDigit(current) || '_' == current)) {
			result += current;
			current = iterator.next();
		}
		return new Variable.Builder(result).build();
	}

	private void skip() {
		while (null != current && current <= ' ')
			current = iterator.next();
	}

}
