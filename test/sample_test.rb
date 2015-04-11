require 'test_helper'

class TestSample < Minitest::Unit::TestCase
  def setup
  end
  
  def test_sample
    assert_equal 1 + 1, 2
  end
end

class TestBoard < Minitest::Unit::TestCase
  def test_board
    Board.new
  end
end
