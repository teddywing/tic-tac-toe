require_relative 'board'
require_relative 'player'

board = Board.new
player_1 = Player.new
player_2 = Player.new
board.current_player = player_1

until board.winner
  coordinates = gets.chomp
  coordinates = board.transform_coordinates(coordinates)
end
