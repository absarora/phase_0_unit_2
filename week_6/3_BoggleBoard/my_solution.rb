# U2.W6: Create a BoggleBoard Class


# I worked on this challenge [by myself].


# 2. Pseudocode

# create the class constructor
# declare instance variable
# use instance variable within the methods of an object
# test the code

# 3. Initial Solution
class BoggleBoard
  def initialize(board)
    @board = board
  end
 
  def create_word(*coords)
    coords.map { |coord| @board[coord.first][coord.last]}.join("")
  end
  
  def get_row(row)
    @board[row]
  end

  def get_col(col)
    @board.transpose[col]
  end
end
 
 
dice_grid = [["b", "r", "a", "e"],
             ["i", "o", "d", "t"],
             ["e", "c", "l", "r"],
             ["t", "a", "k", "e"]]
 
boggle_board = BoggleBoard.new(dice_grid)
 


# 4. Refactored Solution






# 1. DRIVER TESTS GO BELOW THIS LINE
# create driver test code to retrieve a value at a coordinate here:

puts boggle_board.create_word([1,2],[1,1],[2,1],[3,2]) == "dock"

# implement tests for each of the methods here:

num = 0
while num < 4
print "row #{num+1}: "
p boggle_board.get_row(num)

print "col #{num+1}: "
p boggle_board.get_col(num)
num += 1
end

# 5. Reflection 

# I feel more comfortable using classes now; this was good practice.
