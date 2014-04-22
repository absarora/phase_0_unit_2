# U2.W4: Add it up!

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  

# I worked on this challenge [by myself].

# 1. Pseudocode
# ----------------------------------------
# What is the input?
# The input is either an array of numbers or an array of strings

# What is the output? (i.e. What should the code return?)
# There are two methods: "total" and "sentence maker"
# The method "total" returns the sum of all numbers in an array
# The method "sentence maker" capitalizes the first letter of a string and adds a period at
# the end of a sentence.

# What are the steps needed to solve the problem?

# For method "total":
# a variable to store the sum of numbers in an array
# iterate over an array
# return the array total

# For method "sentence_maker":
# convert an array to a string
# capitalize the first letter of a string
# add a period at the end of a string
# =========================================

# 2. Initial Solution

def total(array)
  array_total = 0
  array.each {|i| array_total += i}
  array_total
end

def sentence_maker(array)
  array.join(" ").capitalize + "."
end

# =========================================

# 3. Refactored Solution

def total(array)
  array_total = 0
  array.each {|i| array_total += i}
  array_total
end

def sentence_maker(array)
  array.join(" ").capitalize + "."
end

# =========================================

# 4. Reflection 
# ----------------------------------------

# This was an easy exercise to work with but I did get confused in the beginning
# as I wasn't able to, correctly, convert an array to a string.

# My initial solution to "sentence maker" was:
 
# def sentence_maker(array)
#   final_array = []
#   array.join(" ").map {|i| i.first.capitalize + "."}.join
# end
 
# The solution above did work as I tested it in the Ruby editor, "repl.it" and
# "codecademy labs" online, but it failed to pass the tests. The Ruby API cleared
# the confusion for me and I was able to fix my errors.
