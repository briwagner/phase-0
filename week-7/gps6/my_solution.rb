# Virus Predictor

# I worked on this challenge [with Tal ].
# We spent [1] hours on this challenge.

# EXPLANATION OF require_relative
#
=begin

Require relative is calling in a separate Ruby file to be included in the environment.
Require relative searches in the directory of the file requesting it. It won't search
outside the local path.
Require asks the user to specify an absolute path which may be outside the load
path to find the file specified.

=end
#
#
require_relative 'state_data'

class VirusPredictor

# Initialize method; asks for three arguments when a new instance is created;
# passes those arguments into instance variables.
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

# This is primary driver code to generate the output.
# Calls two additional methods.

  def virus_effects
    predicted_deaths
    speed_of_spread
  end

  private

# Calculates a number_of_deaths variable based on data passed in from instance.
# Conditional statement that evalutes population_density of instance.

  def predicted_deaths()
    # predicted deaths is solely based on population density
    if @population_density >= 200
      death_factor = 0.4
      # number_of_deaths = (@population * 0.4).floor
    elsif @population_density >= 150
      death_factor = 0.3
      # number_of_deaths = (@population * 0.3).floor
    elsif @population_density >= 100
      death_factor = 0.2
      # number_of_deaths = (@population * 0.2).floor
    elsif @population_density >= 50
      death_factor = 0.1
      # number_of_deaths = (@population * 0.1).floor
    else
      death_factor = 0.05
      # number_of_deaths = (@population * 0.05).floor
    end
    number_of_deaths = (@population * death_factor).floor

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end

# Generates a speed variable based on data from the instance.
  def speed_of_spread() #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    # speed = 0.0

    if @population_density >= 200
      speed = 0.5
    elsif @population_density >= 150
      speed = 1
    elsif @population_density >= 100
      speed = 1.5
    elsif @population_density >= 50
      speed = 2
    else
      speed = 2.5
    end

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state

STATE_DATA.each{|state, population_data|
  new_state = VirusPredictor.new(state, population_data[:population_density],population_data[:population])
  new_state.virus_effects
  #state[0].virus_effects
}

#  state[0]
#  state[1][:population_density]
# state[1][:population]


# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects

# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects

# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects


#=======================================================================
# Reflection Section