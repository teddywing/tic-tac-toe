class Board
  attr_accessor :current_player
  
  def initialize
    @board = [
      ['.', '.', '.'],
      ['.', '.', '.'],
      ['.', '.', '.']
    ]
  end
  
  def render
    output = ''
    @board.each {|row| output << row.join + "\n" }
    output
  end
  
  # Raises an ArgumentError if integer conversion fails
  def transform_coordinates(str)
    coordinates = str.split(',')
    
    begin
      coordinates[0] = Integer(coordinates[0])
      coordinates[1] = Integer(coordinates[1])
      
      coordinates if coordinates.length > 1
    rescue
    end
  end
  
  def update_cell(row_index, column_index, value)
    @board[row_index][column_index] = value
  end
  
  def winner?
    initial = '.'
    
    # Check horizontal
    @board.each do |row|
      return row[0] if array_items_equal(row) and row[0] != initial
    end
    
    # Check vertical
    @board.transpose.each do |column|
      return column[0] if array_items_equal(column) and column[0] != initial
    end
    
    # Check diagonals
    descending = [
      @board[0][0],
      @board[1][1],
      @board[2][2]
    ]
    if array_items_equal(descending) and descending[0] != initial
      return descending[0]
    end
    
    ascending = [
      @board[2][0],
      @board[1][1],
      @board[0][2]
    ]
    if array_items_equal(ascending) and ascending[0] != initial
      return ascending[0]
    end
    
    nil
  end
  
  private
  
    def array_items_equal(arr)
      arr.uniq.length == 1
    end
end
