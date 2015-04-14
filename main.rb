require_relative 'board'
require_relative 'player'

board = Board.new
player_1 = Player.new(Player::INSIGNIAS[:x], board)
player_2 = Player.new(Player::INSIGNIAS[:o], board)
board.current_player = player_1

until board.winner
  coordinates = gets.chomp
  coordinates = board.transform_coordinates(coordinates)
  
  board.current_player.move(coordinates)
end
