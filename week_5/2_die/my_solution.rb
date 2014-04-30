# U2.W5: Die Class 2: Arbitrary Symbols


# I worked on this challenge [by myself].

# 2. Pseudocode

# Input: Die.new(array)
# Output: length of an array and a random element from an array
# Steps:
# raise an argument if labels is an empty array
# set an instance variable in the initialize method
# return the length of the labels array
# return a random element from an array


# 3. Initial Solution

class Die
  def initialize(labels)
    raise ArgumentError.new("List of labels is empty") if labels == []
    @labels = labels
  end

  def sides
    @labels.length
  end

  def roll
    @labels.sample
  end
end



# 4. Refactored Solution






# 1. DRIVER TESTS GO BELOW THIS LINE


die = Die.new(['A', 'B', 'C', 'D', 'E', 'F'])



# 5. Reflection

# This was comparatively an easier exercise to work on compared to the last one. I understand argument error better
# now.
