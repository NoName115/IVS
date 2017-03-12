#!/usr/bin/env python3

import unittest
import random
import mathlib


class mlib_test(unittest.TestCase):

    def setUp(self):
        self.solver = mathlib.solver()

    def test_addition(self):
        self.assertEqual(self.solver.solve('1+1'), 1+1)
        self.assertEqual(self.solver.solve('500.+1820'), 500.+1820)

    def test_multiplicaiton(self):
        self.assertEqual(self.solver.solve('8*300'), 8*300)
        self.assertEqual(self.solver.solve('1.245*2.345'), 1.245*2.345)

    def test_division(self):
        self.assertEqual(self.solver.solve('10/13'), 10/13)
        self.assertEqual(self.solver.solve('8/0'), ZeroDivisionError)


unittest.main(verbosity=2)
