require 'spec_helper'

describe Board do
  before do
    @board = Board.new
  end
  
  describe '#render' do
    it 'prints a grid' do
      out, err = capture_io do
        @board.render
      end
      
      out.must_equal <<EOF
...
...
...
EOF
    end
end
