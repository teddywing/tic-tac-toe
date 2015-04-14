require 'spec_helper'
require 'board'
require 'player'

describe Player do
  describe '#move' do
    before do
      board = Board.new
      @player = Player.new('X', board)
    end
    
    it 'raises an ArgumentError given invalid coordinates' do
    end
    
    it 'adds a piece to the correct coordinates on `board`' do
    end
    
    it 'uses the correct insignia for the move' do
    end
  end
end
