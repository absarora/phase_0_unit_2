# U2.W5: Virus Predictor

# I worked on this challenge [by myself].
#=====================================================
# 1. What is the program doing?
# The program inputs the state data from the 'state_data.rb' file and predicts
# the time it would take for the virus to spread across different states in US.
#=====================================================
# 2. EXPLANATION OF require_relative
# From my understanding, require_relative means that it seeks the file with the
# name mentioned in the quote next to it.

# For example: 
# Filename: original_code.rb
# context within the "original_code.rb" file:
#     require_relative 'state_data'

# In the example above, original_code.rb file is looking for a file named "state_data.rb"
#=====================================================
# 3. 'Analyze state_data' - What is going on with this hash? What does it have in it?
# This hash saves the "population density", "population", "region", and "regional spread"
# of each state.
#=====================================================
require_relative 'state_data'

class VirusPredictor
  # The initialize method initializes the instance variables required to present the data
  # of each state
  def initialize(state_of_origin, population_density, population, region, regional_spread)
    @state = state_of_origin
    @population = population
    @population_density = population_density
    @region = region
    @next_region = regional_spread
  end
  # This method predicts the deaths within the state using the state's population density
  # and its population. Also, it estimates the speed of virus as it spreads through the
  # given state based on the population density.
  def virus_effects
    predicted_deaths(@population_density, @population, @state)
    speed_of_spread(@population_density, @state)
  end

  private
  # This is a private method; meaning, this method can only be called within the
  # class it refers to (VirusPredictor)

  # this method predicts the number of deaths based on the population density
  # of a given state
  def predicted_deaths(population_density, population, state)
    if @population_density >= 200
      number_of_deaths = (@population * 0.4).floor
    elsif @population_density >= 150
      number_of_deaths = (@population * 0.3).floor
    elsif @population_density >= 100
      number_of_deaths = (@population * 0.2).floor
    elsif @population_density >= 50
      number_of_deaths = (@population * 0.1).floor
    else 
      number_of_deaths = (@population * 0.05).floor
    end

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end
  # this method estimates the speed of spread based on the population density of
  # a given state
  def speed_of_spread(population_density, state) #in months
    speed = 0.0

    if @population_density >= 200
      speed += 0.5
    elsif @population_density >= 150
      speed += 1
    elsif @population_density >= 100
      speed += 1.5
    elsif @population_density >= 50
      speed += 2
    else 
      speed += 2.5
    end

    puts " and will spread across the state in #{speed} months.\n\n"

  end
end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state

STATE_DATA.each_key do |state|
  state = VirusPredictor.new(state, STATE_DATA[state][:population_density], STATE_DATA[state][:population], STATE_DATA[state][:region], STATE_DATA[state][:regional_spread]) 
  state.virus_effects
end
