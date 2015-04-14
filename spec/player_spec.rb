require 'spec_helper'
require 'board'
require 'player'

describe Player do
  describe 'insignias' do
    it 'knows what an X insignia is' do
      Player::INSIGNIAS[:x].must_equal 'X'
    end
    
    it 'knows what an O insignia is' do
      Player::INSIGNIAS[:o].must_equal 'O'
    end
  end
  
  describe '#move' do
    before do
      @board = Board.new
      @player = Player.new(Player::INSIGNIAS[:x], @board)
    end
    
    it 'raises an ArgumentError given nil coordinates' do
      -> { @player.move(nil) }.must_raise ArgumentError
    end
    
    it 'adds a piece to the correct coordinates on `board`' do
      @player.move([1, 2])
      @board.instance_variable_get(:@board)[1][2].must_equal \
        @player.instance_variable_get(:@insignia)
    end
    
    it 'uses the correct insignia for the move' do
      insignia = Player::INSIGNIAS[:o]
      player = Player.new(insignia, @board)
      player.move([0, 1])
      @board.instance_variable_get(:@board)[0][1].must_equal insignia
    end
  end
end
