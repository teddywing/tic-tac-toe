require_relative 'board'
require_relative 'player'

board = Board.new
player_1 = Player.new(Player::INSIGNIAS[:x], board)
player_2 = Player.new(Player::INSIGNIAS[:o], board)
board.current_player = player_1
winner = nil

until winner
  puts board.render
  puts
  
  print "Player #{board.current_player.insignia} move - " \
    "Enter coordinates (e.g. 0,2): "
  
  coordinates = gets.chomp
  coordinates = board.transform_coordinates(coordinates)
  
  board.current_player.move(coordinates)
  
  board.current_player = board.current_player == player_1 ? player_2 : player_1
  
  puts '----'
  
  winner = board.winner?
  if winner
    puts board.render
    puts "Player #{winner} wins"
  end
end
