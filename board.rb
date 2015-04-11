class Board
  def initialize
    @board = [
      ['.', '.', '.'],
      ['.', '.', '.'],
      ['.', '.', '.']
    ]
  end
  
  def render
    puts "...\n" * 3
  end
end
