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
  
  describe '#transform_coordinates' do
    it 'converts string coordinates to an array' do
      @board.transform_coordinates('0,4').must_equal [0, 4]
    end
    
    it "returns nil if coordinates don't match the format" do
      @board.transform_coordinates('4').must_be_nil
      @board.transform_coordinates('4 2').must_be_nil
      @board.transform_coordinates('booyakacha').must_be_nil
      @board.transform_coordinates('booya,kacha').must_be_nil
    end
  end
end
