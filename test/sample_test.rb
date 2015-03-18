require 'minitest/autorun'

class TestSample < Minitest::Unit::TestCase
  def setup
  end
  
  def test_sample
    assert_equal 1 + 1, 2
  end
end
