# U2.W5: Die Class 1: Numeric


# I worked on this challenge [by myself].

# 2. Pseudocode

# Input: Die.new(6) 
# Output: # of sides and a random # between 1 and 6 
# Steps:
# raise an argument error if sides < 1
# create an instance variable
# return the # of sides the user input
# return a random # between 1 and 6


# 3. Initial Solution

class Die
  def initialize(sides)
    raise ArgumentError.new("Number must be greater than or equal to 1") if sides < 1
    @sides = sides
  end
  
  def sides
    @sides
  end
  
  def roll
    rand(1..@sides)
  end
end



# 4. Refactored Solution






# 1. DRIVER TESTS GO BELOW THIS LINE


die = Die.new(6)
die.sides
die.roll


# 5. Reflection

# There was a lot of learning involved for this exercise. I am not very comfortable with using classes, yet. I didn't
# know how to raise an argument error but this link (http://apidock.com/ruby/ArgumentError) helped me get past that.
