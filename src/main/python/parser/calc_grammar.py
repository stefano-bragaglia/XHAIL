from arpeggio import EOF
from arpeggio import OneOrMore
from arpeggio import Optional
from arpeggio import RegExMatch as _
from arpeggio import ZeroOrMore


def number():
    return _(r'\d*\.\d*|\d+')


def factor():
    return Optional(["+", "-"]), [number, ("(", expression, ")")]


def term():
    return factor, ZeroOrMore(["*", "/"], factor)


def expression():
    return term, ZeroOrMore(["+", "-"], term)


def calc():
    return OneOrMore(expression), EOF
