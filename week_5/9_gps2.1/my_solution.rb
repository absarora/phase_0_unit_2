# U2.W5: The Bakery Challenge (GPS 2.1)

# Your Names
# 1) Ajaybir Singh
# 2) Jonathan Howden (Instructor)

# This is the file you should end up editing.

def bakery_num(num_of_people, fav_food) # creating a method named, "bakery_num" which takes two arguments
  my_list = {"pie" => 8, "cake" => 6, "cookie" => 1} # creating a hash named, "my_list"

  has_fave = false #set has_fave to false

  my_list.each_key {|k| has_fave = true if k == fav_food} #iterate over "my_list" keys

  raise ArgumentError.new("You can't make that food") if has_fave == false # if has_fave is false, return an argument error
  fav_food_qty = my_list[fav_food] # fav_food_qty is set to "fav_food" value from my_list hash

  if num_of_people % fav_food_qty == 0 # if num_of_people divided by fav_food_qty equals 0, do the following:
    num_of_food = num_of_people / fav_food_qty #num_of_food equals the value received by dividing num_of_people by fav_food_qty
    "You need to make #{num_of_food} #{fav_food}(s)." #print this line to the console
  else #if num_of_people divided by fav_food_qty does not equal 0, do the following:
    while num_of_people > 0 #start a while loop (while num_of_people are more than zero, do the following:)
      quantity = Hash.new #create a new Hash called "quantity"
      my_list.each do |dessert, amount| #iterate over the hash, "my_list"
        quantity[dessert] = num_of_people/amount #set the hash key-value pairs for quantity
        num_of_people %= amount #num_of_people is set to the remainder of dividing num_of_people by amount
      end
    end
    "You need to make #{quantity["pie"]} pie(s), #{quantity["cake"]} cake(s), and #{quantity["cookie"]} cookie(s)."
    # print the statement above
  end
end

#-----------------------------------------------------------------------------------------------------
#DRIVER CODE-- DO NOT MODIFY ANYTHING BELOW THIS LINE (except in the section at the bottom)
# These are the tests to ensure it's working. 
# These should all print true if the method is working properly.
  p bakery_num(24, "cake") == "You need to make 4 cake(s)."
  p bakery_num(41, "pie") == "You need to make 5 pie(s), 0 cake(s), and 1 cookie(s)."
  p bakery_num(24, "cookie") == "You need to make 24 cookie(s)."
  p bakery_num(4, "pie") == "You need to make 0 pie(s), 0 cake(s), and 4 cookie(s)."
  p bakery_num(130, "pie") == "You need to make 16 pie(s), 0 cake(s), and 2 cookie(s)."
  #p bakery_num(3, "apples") # this will raise an ArgumentError

# You SHOULD change this driver code. Why? Because it doesn't make sense.
  p bakery_num(42, "cake") == "You need to make 7 cake(s)." #changed the number of people



#  Reflection 

# Jonathan informed me that the other guy who was going to pair up had signed up for more than one GPS 2.1 and
# that he won't be joining us. So, I paired up with Jonathan. I explained him the code as what it does and refactored
# the code a little; he left me off by explaining how the code wasn't dry after the while loop and wrote me few lines
# of code to create a new hash and store the values for each extra dessert that the user might add to my_list. I
# understood what he was trying to tell me but it took me a little while to come up with the solution. I am glad
# it works.

