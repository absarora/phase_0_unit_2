# U2.W4: Homework Cheater!


# I worked on this challenge [by myself, with: ].

# 2. Pseudocode

# Input: subject name, title, author, thesis, gender
# Output: An essay based on the subject chosen
# Steps:
=begin
1. create a method with an atrribute for the given inputs
2. create a hash to store the values
3. Use if-else statements to check for the user chosen subject
4. return an appropriate essay based on the subject chosen
=end


# 3. Initial Solution

def assignment(name, title, author, thesis, gender)
  subject = {
      :person => "Ajaybir Singh",
      :name   => name,
      :date   => Time.new,
      :title  => title,
      :author => author,
      :thesis => thesis,
      :pronoun => ""
  }
  gender == "male" ? subject[:pronoun] = "He" : subject[:pronoun] = "She"

  puts "\n" + subject[:person].rjust(100/1.0)
  puts subject[:date].inspect.rjust(100/1.0)

  if subject[:name] == "History"
    puts subject[:title].center(100/1.0)
    "\n" + subject[:thesis] + " " + subject[:pronoun] + " is often referred to as \"Shaheed\" " + subject[:author] + ", the word \"Shaheed\"\nmeaning \"martyr\" in a number of Indian languages."
  elsif subject[:name] == "Photography"
    puts subject[:title].center(100/1.0)
    "\n" + subject[:thesis] + " " + subject[:pronoun] + " was
an early adopter of 35 mm format, and the master of candid photography."
  elsif subject[:name] == "Science"
    puts subject[:title].center(100/1.0)
    "\n" + subject[:thesis] + " " + subject[:pronoun] + " developed the general theory of relativity,
one of the two pillars of modern physics."
  end
end


# 4. Refactored Solution


def assignment(name, title, author, thesis, gender)
  subject = {
      :person => "Ajaybir Singh",
      :name   => name,
      :date   => Time.new,
      :title  => title,
      :author => author,
      :thesis => thesis,
      :pronoun => ""
  }
  gender == "male" ? subject[:pronoun] = "He" : subject[:pronoun] = "She"

  puts "\n" + subject[:person].rjust(100/1.0)
  puts subject[:date].inspect.rjust(100/1.0)

  if subject[:name] == "History"
    puts subject[:title].center(100/1.0)
    "\n" + subject[:thesis] + " " + subject[:pronoun] + " is often referred to as \"Shaheed\" " + subject[:author] + ", the word \"Shaheed\"\nmeaning \"martyr\" in a number of Indian languages."
  elsif subject[:name] == "Photography"
    puts subject[:title].center(100/1.0)
    "\n" + subject[:thesis] + " " + subject[:pronoun] + " was
an early adopter of 35 mm format, and the master of candid photography."
  elsif subject[:name] == "Science"
    puts subject[:title].center(100/1.0)
    "\n" + subject[:thesis] + " " + subject[:pronoun] + " developed the general theory of relativity,
one of the two pillars of modern physics."
  end
end



# 1. DRIVER TESTS GO BELOW THIS LINE

puts "\n" + "------------- Homework Cheat --------------\n".center(100/1.0)
puts "which subject would you like help with, today? (History, Science, or Photography)"
subject = gets.chomp.downcase
if subject == "history"
  puts assignment("History", "Bhagat Singh", "Bhagat Singh", "Bhagat Singh was an Indian freedom fighter, considered to be one of the most influential revolutionaries
of the Indian Independence Movement.", "male")
elsif subject == "photography"
  puts assignment("Photography", "Henri Cartier-Bresson", "Henri Cartier-Bresson", "Henri Cartier-Bresson was a French photographer considered to be the father of photojournalism.", "male")
elsif subject == "science"
puts assignment("Science", "Albert Einstein", "Albert Einstein", "Albert Einstein was a German-born theoretical physicist.", "male")
else
  puts "No cheat available for " + subject.capitalize + ", yet."
end



# 5. Reflection 

=begin
  I am not sure if I wrote the Driver tests as I was supposed to write them. Overall, it was an easy exercise, but
  time consuming. I had to review hashes for this exercise and I had to research on as how to center strings.
=end
