from unittest import TestCase

from mockito import mock, verify

from main import hello_world


# noinspection PyMethodMayBeStatic
class MainTest(TestCase):

    def test__hello_world(self):
        out = mock()
        hello_world(out)
        verify(out).write("Hello world of Python\n")
