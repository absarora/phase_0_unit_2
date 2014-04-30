# U2.W5: Build a simple guessing game SOLO CHALLENGE


# I worked on this challenge [by myself, with: ].

# 2. Pseudocode

# Input: GuessingGame.new(10)
# Output: 
#---------------------------
# game.solved?   # => false

# game.guess(5)  # => :low
# game.guess(20) # => :high
# game.solved?   # => false

# game.guess(10) # => :correct
# game.solved?   # => true
#---------------------------
# Steps:
# set instance variables for initialize and guess
# return high if guess is too high
# return correct if guess is equal to the input
# return low if guess is too low
# if guess equal the input, return true for we have solved the guessing game

# 3. Initial Solution

class GuessingGame
  def initialize(answer)
    @answer = answer
  end
  def guess(guess)
    @guess = guess
    return :high if guess > @answer
    return :correct if guess == @answer
    return :low if guess < @answer
  end
  def solved?
    @guess == @answer
  end
end

# 4. Refactored Solution






# 1. DRIVER TESTS GO BELOW THIS LINE

game = GuessingGame.new(10)

game.solved?   # => false

game.guess(5)  # => :low
game.guess(20) # => :high
game.solved?   # => false

game.guess(10) # => :correct
game.solved?   # => true


# 5. Reflection 

# This is one of the exercises provided in the array of exercises given to us before week 0 and I did finish it
# back then. The user story provided for this is straight forward and easy to follow through to finish this
# exercise. I didn't have any trouble for this exercise.
