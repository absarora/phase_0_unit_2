# U2.W4: Research Methods

i_want_pets = ["I", "want", 3, "pets", "but", "I", "only", "have", 2]
my_family_pets_ages = {"Evi" => 6, "Hoobie" => 3, "George" => 12, "Bogart" => 4, "Poly" => 4, 
            "Annabelle" => 0, "Ditto" => 3}

# Person 1's solution
def my_array_finding_method(source, thing_to_find)
  source.keep_if {|i| i =~ /#{thing_to_find}/}
end

def my_hash_finding_method(source, thing_to_find)
  source.keep_if {|key,value| value == thing_to_find}.keys
end

# Identify and describe the ruby method you implemented. 
# Method used: keep_if
# Action: Deletes every element of self for which the given block evaluates to false.

# Person 2
def my_array_modification_method(i_want_this, num)
    new_array=[]
    i=0
    while i < i_want_this.length
        if i_want_this[i].class==Fixnum #tests whether the element is a number
            
            i_want_this[i]= i_want_this[i] + num #if it is a number, increment the element buy num
            new_array << i_want_this[i] #add this to the new array
			else
            new_array<< i_want_this[i] #if it isn't a number, leave it alone and add it to new array
        end 
		i+=1 
    end
    new_array
end

def my_hash_modification_method(my_family_pets_ages, num)
	my_family_pets_ages.each_with_index do |(x,y), index|
        my_family_pets_ages[x]+= num
    end

# Identify and describe the ruby method you implemented. 
# .each_with_index takes each element of a hash and an index and iterates through.
#
#


# Person 3
def my_array_sorting_method(source)
  source.partition{|x| x.is_a? Integer}.map(&:sort)
end

def my_hash_sorting_method(source)
  source.sort_by &:last
end

# Identify and describe the ruby method you implemented. 
# 
#
#


# Person 4
def my_array_deletion_method(source, thing_to_delete)
  source.each do |x|
    if x.to_s.split("").include?(thing_to_delete) 
      source.delete(x)
    end
  end
end

def my_hash_deletion_method(source, thing_to_delete)
  source.delete_if { |key, value| key == thing_to_delete }
end

# Identify and describe the ruby method you implemented. 
# 
#
#


################## DRIVER CODE ###################################
# HINT: Use `puts` statements to see if you are altering the original structure with these methods. 
# Each of these should return `true` if they are implemented properly.

p my_array_finding_method(i_want_pets, "t") == ["want","pets","but"]
p my_hash_finding_method(my_family_pets_ages, 3) == ["Hoobie", "Ditto"]
p my_array_modification_method(i_want_pets, 1) == ["I", "want", 4, "pets", "but", "I", "only", "have", 3 ]
p my_hash_modification_method(my_family_pets_ages, 2) == {"Evi" => 8, "Hoobie" => 5, "George" => 14, "Bogart" => 6, "Poly" => 6, "Annabelle" => 2, "Ditto" => 5}
p my_array_sorting_method(i_want_pets) == ["3", "4", "I", "but", "have", "only", "pets", "want"]
p my_hash_sorting_method(my_family_pets_ages) == [["Annabelle", 2], ["Ditto", 5], ["Hoobie", 5], ["Bogart", 6], ["Poly", 6], ["Evi", 8], ["George", 14]] 
# This may be false depending on how your method deals with ordering the animals with the same ages.
p my_array_deletion_method(i_want_pets, "a") == ["I", 4, "pets", "but", "I", "only", 3 ]
p my_hash_deletion_method(my_family_pets_ages, "George") == {"Evi" => 8, "Hoobie" => 5, "Bogart" => 6, "Poly" => 6, "Annabelle" => 2, "Ditto" => 5}

# Reflect!
# I am still trying to get a hang of regex; else, this was an easy exercise to work on.
# 
# 
# 
# 
