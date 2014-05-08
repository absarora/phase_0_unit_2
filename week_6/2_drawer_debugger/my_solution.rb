# U2.W6: Drawer Debugger

# I worked on this challenge [by myself].

# 2. Original Code

class Drawer
  attr_reader :contents

# Are there any more methods needed in this class?
  def initialize
    @contents = []
    @open = true
  end

  def open
    @open = true
  end

  def close
    @open = false
  end 

  def add_item(item)
    @contents << item
  end

  def remove_item(item = @contents.pop) #what is `#pop` doing?
    # pop removes the last element from an array
    @contents.delete(item)
  end

  def dump  # what should this method return?
    @contents.clear
    puts "Your drawer is empty."
  end

  def view_contents
    puts "The drawer contains:"
    @contents.each {|silverware| puts "- " + silverware.type }
    puts "* The drawer is empty"if @contents.empty?
  end

  def items
    @contents.map(&:type)
  end
end

class Silverware
  attr_reader :type

# Are there any more methods needed in this class?
  def initialize(type, clean = true)
    @type = type
    @clean = clean
  end

  def eat
    puts "eating with the #{type}"
    @clean = false
  end

  def clean_silverware
    puts "#{type} is clean"
    @clean = false
  end
end

def assert
  raise "Assertion failed!" unless yield
end

knife1 = Silverware.new("knife")

silverware_drawer = Drawer.new
silverware_drawer.add_item(knife1) 
silverware_drawer.add_item(Silverware.new("spoon"))
silverware_drawer.add_item(Silverware.new("fork")) 
silverware_drawer.view_contents

assert {silverware_drawer.items == ['knife','spoon','fork']}

silverware_drawer.remove_item
silverware_drawer.view_contents

assert {silverware_drawer.items == ['knife','spoon']}

sharp_knife = Silverware.new("sharp_knife")
silverware_drawer.add_item(sharp_knife)

silverware_drawer.view_contents

assert {silverware_drawer.items == ['knife','spoon','sharp_knife']}

removed_knife = silverware_drawer.remove_item(sharp_knife)
removed_knife.eat
removed_knife.clean_silverware 

silverware_drawer.view_contents
silverware_drawer.dump
silverware_drawer.view_contents #What should this return?

added_fork = Silverware.new("fork")
silverware_drawer.add_item(added_fork)
silverware_drawer.view_contents
fork = silverware_drawer.remove_item(added_fork) #add some puts statements to help you trace through the code...
fork.eat

assert {silverware_drawer.items == []}

#BONUS SECTION
fork.clean_silverware

# DRIVER TESTS GO BELOW THIS LINE

#included within the test code above
#used assert method to test the code

# 5. Reflection

# This is still a basic exercise where we are creating objects and calling
# different instance methods and some more practice using assert method to test
# the code.
