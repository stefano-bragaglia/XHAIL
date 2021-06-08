from arpeggio import PTNodeVisitor


class CalcBeautifier(PTNodeVisitor):

    def visit_number(self, node, children):
        """
        Converts node value to float.
        """
        if self.debug:
            print("Converting {}.".format(node.value))

        return str(node.value)

    def visit_factor(self, node, children):
        """
        Applies a sign to the expression or number.
        """
        if self.debug:
            print("Factor {}".format(children))

        if len(children) == 1:
            return children[0]

        # if any(c in children[-1] for c in "+-*/()"):
        #     children[-1] = f"({children[-1]})"

        if children[0] == '-':
            return f"-{children[-1]}"

        return children[-1]

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
                term = ' * '.join([term, children[i]])
            else:
                term = ' / '.join([term, children[i]])

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
                expr = ' - '.join([expr, children[i]])
            else:
                expr = ' + '.join([expr, children[i]])

        expr = f"({expr})"

        if self.debug:
            print("Expression = {}".format(expr))

        return expr
