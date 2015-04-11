require 'spec_helper'

describe Board do
  before do
    @board = Board.new
  end
  
  describe '#render' do
    it 'prints a grid' do
      @board.render.must_equal <<EOF
...
...
...
EOF
    end
    
    it 'starts with a grid of dots' do
      @board.instance_variable_get('@board').must_equal [
        ['.', '.', '.'],
        ['.', '.', '.'],
        ['.', '.', '.']
      ]
    end
  end
end
