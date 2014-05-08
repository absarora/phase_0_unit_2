# U2.W6: Refactoring for Code Readability


# I worked on this challenge [by myself].


# Original Solution

# solution taken from "britneyroar"

class CreditCard
	def initialize(number)
		raise ArgumentError.new("Please enter a 16 digit number") if number.to_s.length != 16
		@number = number
	end

	def double_and_sum
		digits = @number.to_s.split("")
		doubled = []
		digits.each_index do |i| 
			if i%2 == 0
				doubled << digits[i].to_i*2  
			else
				doubled << digits[i].to_i
			end
		end
		sum = 0
		doubled.join.each_char do |digit|
			sum += digit.to_i
		end
		sum
	end

	def check_card
		return double_and_sum%10 == 0
	end

end


# Refactored Solution (# 1)

class CreditCard
  def initialize(number)
    @number = number
    raise ArgumentError.new("Please enter a 16 digit number") if @number.to_s.length != 16
  end

  def double_and_sum
    #digits = @number.to_s.split("")
    #doubled = [] #do not need to create a new array
    digits = @number.to_s.split("")
    # digits.each_index do |i| 
    #   if i%2 == 0
    #     doubled << digits[i].to_i*2  
    #   else
    #     doubled << digits[i].to_i
    #   end
    # end
    digits.map!.with_index {|num, i| i.even? ? num.to_i*2 : num.to_i}
    sum = 0
    # doubled.join.each_char do |digit|
    #   sum += digit.to_i
    # end
    digits.join.each_char {|digit| sum += digit.to_i}
    sum
  end

  def check_card
    #return double_and_sum%10 == 0
    double_and_sum % 10 == 0
  end

end

# Refactored Solution (# 2)

class CreditCard
  def initialize(number)
    @number = number
    raise ArgumentError.new("Please enter a 16 digit number") if @number.to_s.length != 16
  end

  def check_card
    #digits = @number.to_s.split("")
    #doubled = [] #do not need to create a new array
    digits = @number.to_s.split("").map.with_index {|num, i| i.even? ? num.to_i*2 : num.to_i}
    # digits.each_index do |i| 
    #   if i%2 == 0
    #     doubled << digits[i].to_i*2  
    #   else
    #     doubled << digits[i].to_i
    #   end
    # end
    
    #digits.map!.with_index {|num, i| i.even? ? num.to_i*2 : num.to_i}
    
    sum = 0
    # doubled.join.each_char do |digit|
    #   sum += digit.to_i
    # end
    digits.join.each_char {|digit| sum += digit.to_i}
    #sum
    sum % 10 == 0
  end
end


# DRIVER TESTS GO BELOW THIS LINE

#p CreditCard.new(11111111111111112) #Invalid Card (more than 16 characters)
#p CreditCard.new(1) #Invalid Card (less than 16 characters)

isValid = CreditCard.new(4563960122001999)
p isValid.check_card

isNotValid = CreditCard.new(4408041234567892)
p isNotValid.check_card




# Reflection

# This is similar to reviewing a solution for your peers and a good practice to refactoring as well.
