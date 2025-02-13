import unittest
from sample_fun import full_name

class TestMathOperations(unittest.TestCase):
  
  def test_add_numbers(self):
    self.assertEqual(full_name('Jayanth', 'Roy'), 'JayanthRoy')
    self.ass (full_name('Jayanth', 'Roy'), 'Jayanth Roy')
    # self.assertEqual(full_name(str, str), str)

if __name__ == "__main__":
  unittest.main()