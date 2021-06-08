from arpeggio import PTNodeVisitor


class CalcVisitor(PTNodeVisitor):

    def visit_number(self, node, children):
        """
        Converts node value to float.
        """
        if self.debug:
            print("Converting {}.".format(node.value))
        return float(node.value)

    def visit_factor(self, node, children):
        """
        Applies a sign to the expression or number.
        """
        if self.debug:
            print("Factor {}".format(children))
        if len(children) == 1:
            return children[0]
        sign = -1 if children[0] == '-' else 1
        return sign * children[-1]

    def visit_term(self, node, children):
        """
        Divides or multiplies factors.
        Factor nodes will be already evaluated.
        """
        if self.debug:
            print("Term {}".format(children))
        term = children[0]
        for i in range(2, len(children), 2):
            if children[i - 1] == "*":
                term *= children[i]
            else:
                term /= children[i]
        if self.debug:
            print("Term = {}".format(term))
        return term

    def visit_expression(self, node, children):
        """
        Adds or subtracts terms.
        Term nodes will be already evaluated.
        """
        if self.debug:
            print("Expression {}".format(children))
        expr = children[0]
        for i in range(2, len(children), 2):
            if i and children[i - 1] == "-":
                expr -= children[i]
            else:
                expr += children[i]
        if self.debug:
            print("Expression = {}".format(expr))
        return expr
