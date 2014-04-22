# U2.W4: Calculate a letter grade!

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  

# I worked on this challenge [by myself, with: ].

# 1. Pseudocode

# What is the input?
# The input is an array of numbers

# What is the output? (i.e. What should the code return?)
# A letter grade (A - F) based on the given conditions

# What are the steps needed to solve the problem?
# iterate over an array
# if-else statements to check the conditions
### if the score is greater than or equal to 90, return an "A" grade
### if the score is greater than or equal to 80, return an "B" grade
### if the score is greater than or equal to 70, return an "C" grade
### if the score is greater than or equal to 60, return an "D" grade
### if the score is less than 60, return an "F" grade


# 2. Initial Solution

def get_grade (average)
  average.each do |i|
    if i >= 90
      return 'A'
    elsif i >= 80
      return 'B'
    elsif i >= 70
      return 'C'
    elsif i >= 60
      return 'D'
    else
      return 'F'
    end
  end
end


# 3. Refactored Solution

def get_grade (average)
  average.each do |i|
    return 'A' if i >= 90
    return 'B' if i >= 80
    return 'C' if i >= 70 
    return 'D' if i >= 60
    return 'F' if i < 60
  end
end

# 4. Reflection

# This exercise was almost identical to the one we did before starting
# phase 0. Everything seemed to work out of the box. Easy!
