# U2.W4: SOLO CHALLENGE Calculate the Median!

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  

# I worked on this challenge [by myself, with: ].

# 1. Pseudocode

# What is the input?
# an array of either numbers or strings

# What is the output? (i.e. What should the code return?)
# median (middle number or string of an array)

# What are the steps needed to solve the problem?
# 1. sort an array
# 2. check to see if the length of an array is even or odd
# 3. For an array with an even length, take the middle two numbers of an array
# and divide by two (use floating type for decimals)
# 4. For an array with odd length, take the length of an array and divide by two

# 2. Initial Solution

def median(array)
  array.sort!
  if array.length % 2 == 0
    middle = 0.5 * (array[array.length/2] + array[array.length/2-1]).to_f
    return middle
  else
    middle = (array[(array.length-1)/2])
    return middle
  end
end


# 3. Refactored Solution

def median(array)
  array.sort!
  array.length % 2 == 0 ? (middle = 0.5 * (array[array.length/2] + array[array.length/2-1]).to_f) : (middle = (array[(array.length-1)/2]))
  return middle;
end

# 4. Reflection

# We had a similar problem to solve in a group project while learning Javascript in Week 3.
# It was a good review; the only change required was to take care of floating numbers to
# take care of decimal values during an array of even length.
