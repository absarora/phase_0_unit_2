# U2.W5: A Nested Array to Model a Boggle Board

# I worked on this challenge [by myself, with: ].

boggle_board = [["b", "r", "a", "e"],
                ["i", "o", "d", "t"],
                ["e", "c", "l", "r"],
                ["t", "a", "k", "e"]]


# Part 1: Access multiple elements of a nested array

# Pseudocode
#----------------------------------------------------------
# create a method, "create_word" which takes two arguments
# 	first argument = boggle_board multidimensional array
# 	second argument = an array of coordinates
# iterate over an array
# convert an array to a string and return the value
#----------------------------------------------------------

# Initial Solution

def create_word(board, *coords)
  coords.map { |coord| board[coord.first][coord.last]}.join("")
end

# Refactored Solution


# DRIVER TESTS GO BELOW THIS LINE

p create_word(boggle_board, [2,1], [1,1], [1,2], [0,3])  == "code"  
p create_word(boggle_board, [0,1], [0,2], [1,2])  == "rad"

# Reflection 

#-------------------------------------------------------------------------------

# Part 2: Write a method that takes a row number and returns all the elements in the row.  

# Pseudocode
#----------------------------------------------------------
# create a method called, "get_row" that takes two arguments
# 	first argument = boggle board array
# 	second argument = an integer
# return a row from the boggle board specified by an integer input to the second argument
#----------------------------------------------------------

# Initial Solution

def get_row(board, row)
  board[row]
end

# Refactored Solution


# DRIVER TESTS GO BELOW THIS LINE

p get_row(boggle_board, 0) == ["b", "r", "a", "e"]
p get_row(boggle_board, 1) == ["i", "o", "d", "t"]

# Reflection 



#-------------------------------------------------------------------------------

# Part 3: Now write a method that takes a column number and returns all the elements in the column.

# Pseudocode
#----------------------------------------------------------
# create a method called, "get_col" that takes two arguments
# 	first argument = boggle board array
# 	second argument = an integer
# return a col from the boggle board specified by an integer input to the second argument
#----------------------------------------------------------

# Initial Solution

def get_col(board, col)
  board.transpose[col]
end

# Refactored Solution


# DRIVER TESTS GO BELOW THIS LINE

p get_col(boggle_board, 1) == ["r","o","c","a"]
p get_col(boggle_board, 2) == ["a","d","l","k"]

# Reflection
# I searched google for a method to get the column in an array and transpose method did the trick.
