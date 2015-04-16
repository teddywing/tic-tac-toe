require 'test_helper'

class TestBoard < Minitest::Unit::TestCase
  def setup
    @board = Board.new
  end
  
  def test_render
    assert_equal @board.render, <<EOS
...
...
...
EOS
  end
end
