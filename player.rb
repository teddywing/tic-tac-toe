class Player
  INSIGNIAS = {
    :x => 'X',
    :o => 'O'
  }
  
  def initialize(insignia, board)
    @insignia = insignia
    @board = board
  end
  
  def move(coordinates)
    raise ArgumentError if coordinates.nil?
    
    @board.update_cell(coordinates[0], coordinates[1], @insignia)
  end
end
