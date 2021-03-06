require 'spec_helper'
require 'board'

describe Board do
  before do
    @board = Board.new
  end
  
  it 'starts with a grid of dots' do
    @board.instance_variable_get('@board').must_equal [
      ['.', '.', '.'],
      ['.', '.', '.'],
      ['.', '.', '.']
    ]
  end
  
  describe '#render' do
    it 'must be a grid' do
      @board.render.must_equal <<EOF
...
...
...
EOF
    end
    
    it 'must be the correct board' do
      @board.instance_variable_set(:@board, [
        ['.', 'X', 'O'],
        ['X', '.', '.'],
        ['.', '.', '.'],
      ])
      @board.render.must_equal <<EOF
.XO
X..
...
EOF
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
  
  describe '#update_cell' do
    it 'updates a given cell with a given value' do
      value = 'X'
      @board.update_cell(1, 2, value)
      @board.instance_variable_get(:@board)[1][2].must_equal value
    end
  end
  
  describe '#winner?' do
    before do
      @board = Board.new
    end
    
    it 'must be nil when no player has won' do
      @board.winner?.must_be_nil
    end
    
    it 'must be the winning player' do
    end
    
    it 'counts horizontal matches as wins' do
      @board.instance_variable_set(:@board, [
        ['X', 'X', 'X'],
        ['X', 'O', 'O'],
        ['O', 'X', 'O'],
      ])
      @board.winner?.must_equal 'X'
      
      @board.instance_variable_set(:@board, [
        ['X', 'O', 'X'],
        ['O', 'O', 'O'],
        ['O', 'X', 'X'],
      ])
      @board.winner?.must_equal 'O'
      
      @board.instance_variable_set(:@board, [
        ['O', 'X', 'X'],
        ['X', 'O', 'X'],
        ['O', 'O', 'O'],
      ])
      @board.winner?.must_equal 'O'
    end
    
    it 'counts vertical matches as wins' do
      @board.instance_variable_set(:@board, [
        ['X', 'O', 'X'],
        ['X', 'O', 'O'],
        ['X', 'X', 'O'],
      ])
      @board.winner?.must_equal 'X'
      
      @board.instance_variable_set(:@board, [
        ['X', 'O', 'X'],
        ['X', 'O', 'O'],
        ['O', 'O', 'X'],
      ])
      @board.winner?.must_equal 'O'
      
      @board.instance_variable_set(:@board, [
        ['O', 'X', 'X'],
        ['X', 'O', 'X'],
        ['O', 'O', 'X'],
      ])
      @board.winner?.must_equal 'X'
    end
    
    it 'counts diagonal matches as wins' do
      @board.instance_variable_set(:@board, [
        ['O', 'X', 'X'],
        ['X', 'O', 'O'],
        ['O', 'X', 'O'],
      ])
      @board.winner?.must_equal 'O'
      
      @board.instance_variable_set(:@board, [
        ['X', 'O', 'X'],
        ['O', 'X', 'O'],
        ['O', 'X', 'X'],
      ])
      @board.winner?.must_equal 'X'
    end
  end
  
  describe '#array_items_equal' do
    it 'is true when all elements in the array are equal' do
      Board.new.send(:array_items_equal,
        ['X', 'X', 'X', 'X', 'X', 'X', 'X']).must_equal true
    end
    
    it 'is false when any element is not equal to the rest' do
      Board.new.send(:array_items_equal,
        ['X', 'O', 'X', 'X', 'X', 'X', 'X']).must_equal false
    end
  end
end
