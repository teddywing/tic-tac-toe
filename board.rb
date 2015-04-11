class Board
  def initialize
    @board = [
      ['.', '.', '.'],
      ['.', '.', '.'],
      ['.', '.', '.']
    ]
  end
  
  def render
    "...\n" * 3
  end
end
