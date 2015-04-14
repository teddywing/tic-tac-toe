class Player
  INSIGNIAS = {
    :x => 'X',
    :o => 'O'
  }
  
  def initialize(insignia, board)
    @insignia = insignia
    @board = board
  end
end
