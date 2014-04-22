# U2.W4: Calculate the mode!

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  

# I worked on this challenge [by myself, with: ].

# 1. Pseudocode

# What is the input?
# an array of numbers

# What is the output? (i.e. What should the code return?)
# mode (a number that repeats itself the most number of times within an array)

# What are the steps needed to solve the problem?


# 2. Initial Solution

def mode(array)
  count = Hash.new(0) #create a new Hash called count
  array.each {|i| count[i] +=1 } #iterate over an array and increment count

  #select{|key, value| block} -> a_hash
  #Returns a new hash consisting of entries for which the block returns true
  countMax = count.select {|k,v| v == count.values.max}
  return countMax.keys

end


# 3. Refactored Solution

def mode(array)
  count = Hash.new(0) #create a new Hash called count
  array.each {|i| count[i] +=1 } #iterate over an array and increment count

  #select{|key, value| block} -> a_hash
  #Returns a new hash consisting of entries for which the block returns true
  countMax = count.select {|k,v| v == count.values.max}
  return countMax.keys

end

# 4. Reflection

# I had this exercise done before phase 0. There was a lot of learning
# involved for me in terms of creating a hash and reading the Hash class
# in the Ruby API to get the desired results.
