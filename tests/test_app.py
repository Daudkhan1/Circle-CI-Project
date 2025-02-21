import unittest

class TestApp(unittest.TestCase):
    def test_sample(self):
        self.assertEqual(1 + 1, 2)  # A basic test

if __name__ == '__main__':
    unittest.main()
