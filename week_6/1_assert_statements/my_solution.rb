# U2.W6: Testing Assert Statements

# I worked on this challenge [by myself].


# 2. Review the simple assert statement

def assert
  raise "Assertion failed!" unless yield
end

# name = "bettysue"
# assert { name == "bettysue" }
# assert { name == "billybob" }

# 2. Pseudocode what happens when the code above runs

# name = "bettysue"
# "assert" method throws a runtime error: "Assertion failed!" if assert {name != "bettysue"}
# since the last line of code is assert {name == "billybob"} and name != "bettysue, the code above
# returns "Assertion failed!"

# 3. Copy your selected challenge here

boggle_board = [["b", "r", "a", "e"],
                ["i", "o", "d", "t"],
                ["e", "c", "l", "r"],
                ["t", "a", "k", "e"]]

puts boggle_board[0][1] == "r" #=> should be true
puts boggle_board[2][1] == "c" #=> should be true
puts boggle_board[3][3] == "e" #=> should be true
puts boggle_board[2][3] == "x" #=> should be false


# 4. Convert your driver test code from that challenge into Assert Statements

assert { boggle_board[0][1] == "r" }
assert { boggle_board[2][1] == "c" }
assert { boggle_board[3][3] == "e" }
assert { boggle_board[2][3] == "x" }


# 5. Reflection

# I had to refer back to Codecademy but I understand how "yield" works now. Overall, a simple exercise.
