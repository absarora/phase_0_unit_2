# U2.W4: Pad an Array

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  

# I worked on this challenge [by myself].

# 1. Pseudocode

# What is the input?
# (an integer value, value); value can be an integer or a string or left blank

# What is the output? (i.e. What should the code return?)
# [1,2,3].pad(5, 'apple') => [1,2,3,'apple', 'apple']

# What are the steps needed to solve the problem?
# if the length of an array is >= the min_size, return the array
# else calculate the difference and use that value to store the value to an array
# return the array

# 2. Initial Solution

class Array
  def pad!(min_size, value = nil)
    if self.length >= min_size
    return self
    else
    x = min_size - self.count
    x.times {self << value}
    return self
  end
  end
  def pad(min_size, value = nil)
    return self.clone.pad!(min_size, value)
  end
end


# 3. Refactored Solution

class Array
  def pad!(min_size, value = nil)
    x = min_size - self.count #take the argument and subtract the count from it.
    x.times { self << value } # I want to add the value x number of times to the array
    self
  end

  def pad(min_size, value = nil)
  self.clone.pad!(min_size, value)
  end
end

# 4. Reflection

# This was, comparatively, a harder exercise that I came across. With a bit of help, I was able to
# complete this exercise but I am not 100% confident towards the logic involved here.
