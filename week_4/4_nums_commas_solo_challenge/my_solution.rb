# U2.W4: Numbers to Commas Solo Challenge

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  


# 1. Pseudocode

# What is the input?
# an integer

# What is the output? (i.e. What should the code return?)
# separate_comma(0) = "0"
# separate_comma(100) = "100"
# separate_comma(1000) = "1,000"
# separate_comma(100000000) = "100,000,000"

# What are the steps needed to solve the problem?

# 1. convert fixnum to a string
# 2. convert string to an array: separate every digit
# 3. if the length of an array < 4, return array as a string
# 4. if the length of an array == 4, add a comma at index 1
# 5. else add a comma at index 3 (increment index by 4)

# 2. Initial Solution

# The solution below would work if the output is as listed:
# separate_comma(1000000) => "1,000,000"
# This is similar to the example given in the exercise

def separate_comma(int)
  array = int.to_s.split("")
  new_array=[]
  if array.length < 4
    x = array
  end
  index = 1
  while index < array.length
    if array.length >= 4
      x = array.insert(index, ",")
    end
    index +=4
  end
  (new_array << x).join("")
end


# 3. Refactored Solution

# The solution below is different from the one written above
# This solution passes the tests written in the spec file

def separate_comma(int)
  array = int.to_s.split("")
  new_array=[]
  if array.length < 4
    x = array
  end
  index = 3
  while index < array.length
    if array.length == 4
        x = array.insert(1, ",")
    elsif array.length > 4
      x = array.insert(index, ",")
    end
    index +=4
  end
  (new_array << x).join("")
end

# 4. Reflection

# Writing the pseudocode really helped get to the solution, quick. As explained in the exercise,
# I was able to get the desired output only to know that a different logic is required to pass
# the tests. With slight modifications, I was able to get to the solution.
