# Virus Predictor

# I worked on this challenge with Harini during the hour and by myself afterwards.
# We spent a reasonable amount of time on this challenge.

# EXPLANATION OF require_relative
# require_relative is a subset of require, which omplements the builtin method require by allowing you to load a file that is relative to the file containing the require_relative statement.
# It allows you to use ruby modules. 
require_relative 'state_data'

class VirusPredictor
#Sets three parameters and assigns instance variables
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end
#Calls two methods with the three set parameters
  def virus_effects
   print "#{@state} will lose #{predicted_deaths} people in this outbreak and will spread across the state in #{speed_of_spread} months.\n\n"
end
  end

  private
#Uses parameters to predict death based on population density
  #.floor rounds the number, either up or down
  def predicted_deaths(population_density, population, state)
    # predicted deaths is solely based on population density
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
  #A method to calculate speed of infection due to population desnity
  def speed_of_spread(population_density, state) #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
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

 # initialize VirusPredictor for each state
STATE_DATA.each do |state, population_details|
  obj = VirusPredictor.new(state, population_details, STATE_DATA[state][:population_density], STATE_DATA[state][:population])
  obj.virus_effects
end
#=======================================================================
# Reflection Section
  #What are the differences between the two different hash syntaxes shown in the state_data file?
    #There's a hash with integers. There's also a hash with a string.
  #What does require_relative do? How is it different from require?
    #require would require, haha, you to type out the full pathway.
    #require_relative is a short cut to tell the program what file you need.
  #What are some ways to iterate through a hash?
    #On the suggestion of our guide, we used .each to iterate through the hash.
  #When refactoring virus_effects, what stood out to you about the variables, if anything?
    #We could cut out the instance variables, and the program will still run.
  #What concept did you most solidify in this challenge?
    #This challenge defiantely shows the malleability of instance variables.

