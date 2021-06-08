from typing import Any

from arpeggio import ParserPython
from arpeggio import visit_parse_tree

from calc_grammar import calc
from calc_visitor import CalcVisitor
from calc_beautifier import CalcBeautifier


def main(expr: str, debug: bool = False) -> Any:
    parser = ParserPython(calc, debug=debug)
    # calc is the root rule of your grammar
    # Use param debug=True for verbose debugging
    # messages and grammar and parse tree visualization
    # using graphviz and dot

    parse_tree = parser.parse(expr)

    text = visit_parse_tree(parse_tree, CalcBeautifier(debug=debug))[1:-1]

    value = visit_parse_tree(parse_tree, CalcVisitor(debug=debug))

    return text, value


if __name__ == '__main__':
    expr = "-(4-1)*5+(2+4.67)+5.89/(.2+7)"

    text, value = main(expr, False)
    print(' = '.join([text, str(value)]))

    print('Done.')
