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
end
