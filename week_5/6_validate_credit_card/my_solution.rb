# U2.W5: Class Warfare, Validate a Credit Card Number


# I worked on this challenge [by myself].

# 2. Pseudocode

# Input: a fixnum
# Output: validation if the credit card is good or bad
# Steps:

# create an initialize method with an argument
# set an instance variable for the initialize method
# raise an argument error if the credit card length is not equal to 16

# create a check_card method
# convert a fixnum to an array of modifiable integers if the index is of an even length
# convert an array of integers to a string and store the sum of integers
# if the sum of integers divided by 10 equals 0, credit card is valid else it is invalid


# 3. Initial Solution

class CreditCard
  def initialize(cardNum)
    @cardNum = cardNum.to_s
    raise ArgumentError.new("card number should be 16 characters.") if @cardNum.length != 16
  end
  def check_card
    convert = @cardNum.split("").map.with_index {|num, i| i % 2 == 0 ? num.to_i * 2 : num.to_i}
    sum = 0
    convert.join.each_char{|i| sum +=i.to_i}
    sum % 10 == 0
  end
end



# 4. Refactored Solution






# 1. DRIVER TESTS GO BELOW THIS LINE


#p CreditCard.new(11111111111111112) #Invalid Card (more than 16 characters)
#p CreditCard.new(1) #Invalid Card (less than 16 characters)

isValid = CreditCard.new(4563960122001999)
p isValid.check_card

isInvalid = CreditCard.new(4408041234567892)
p isInvalid.check_card



# 5. Reflection
# I had a little tough time converting a fixnum to a modifiable array of integers but once I got past that, this was
# an easy exercise but a good one.
