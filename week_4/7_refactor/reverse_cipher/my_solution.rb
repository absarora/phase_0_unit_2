# U2.W4: Refactor Cipher Solution


# I worked on this challenge [by myself].


# 1. Solution
# Write your comments on what each thing is doing. 
# If you have difficulty, go into IRB and play with the methods.
# Also make sure each step is necessary. If you don't think it's necessary
# Try implementing the code without it. 

def translate_to_cipher(sentence) # defining a method named, "translate_to_cipher" and passing a single argument to it
    alphabet = ('a'..'z').to_a # converting all alphabets to an array
    cipher = Hash[alphabet.zip(alphabet.rotate(4))] # creating a Hash
    spaces = ["@", "#", "$", "%", "^", "&", "*"] # creating an array of special characters
    
    original_sentence = sentence.downcase # setting the input sentence to all lowercase
    encoded_sentence = [] # creates an empty array
    original_sentence.each_char do |element| # iterate over each character in a string
      if cipher.include?(element) #if an element in the Cipher Hash == an element in the input sentence
        encoded_sentence << cipher[element] # push that element from the cipher Hash to an array named, "encoded_sentence"
      elsif element == ' ' # if there is a space in the input sentence
        encoded_sentence << spaces.sample # push one of the elements from spaces array to encoded_sentence array
      else # if not
        encoded_sentence << element #push the original sentence into encoded sentence array
      end # end the if
     end # end the iteration
    
    return encoded_sentence.join # return the encoded sentence as a string
end


# Questions:
# 1. What is the .to_a method doing?
# converts a string to an array

# 2. How does the rotate method work? What does it work on?
# it shifts the elements of an array forward using an argument given as a reference
# For ex: array = ['a','b','c','d']
# array.rotate(2)
# array = ['c','d','a','b']

# 3. What is `each_char` doing?
# each_char iterates over each character in a string

# 4. What does `sample` do?
# picks a random element from an array

# 5. Are there any other methods you want to understand better?
# I am a bit shady on the 'zip' method. Could you give a better example for the same?

# 6. Does this code look better or worse than your refactored solution
#    of the original cipher code? What's better? What's worse?
# It looks much better; There are few lines of code; hence, the program will take less time to load.

# 7. Is this good code? What makes it good? What makes it bad?
# The code is good for it takes less coding to complete the given task.
# It is bad for better variable names could've been chosen.


# 1. DRIVER TESTS GO BELOW THIS LINE
# Does this return the same thing every time?
p translate_to_cipher("I want cookies")
p translate_to_cipher("I want cookies")
p translate_to_cipher("I want cookies")
p translate_to_cipher("I want cookies")

# No, it does not. Since, we used the sample method for the special characters, the white space converts to
# a different character each time the code is run.



# 5. Reflection 
# I was able to read the code, easily; though, I am still a bit shady on my understanding of the "zip" method.

