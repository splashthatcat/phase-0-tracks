#Santa Class
	#Should Have Three Instance Methods: speak, eat_milk_and_cookies, and initialize

#Attributes for Santa:
	#gender
	#ethnicity
	#age
	#reindeer_ranking

class Santa
	attr_reader :age, :ethnicity
	attr_accessor :gender, :age
	
	def initialize(gender, ethnicity)
	  puts "Initializing Santa instance..."
	  @gender = gender
	  @ethnicity = ethnicity
	  @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
	  @age = 0
	end
	
	def speak
	  puts "Ho, ho, ho! Haaaappy Holidays!"
    end
    
    def eat_milk_cookies(cookie_type)
      puts "That was a good #{cookie_type}!"
    end
    
    def celebrate_birthday
      @age += 1
    end
    
    def get_mad_at(reindeer_name)
      @reindeer_ranking.delete(reindeer_name)
      @reindeer_ranking << reindeer_name
    end
    
end
#Driver code to test out initialization of Santas
santa = Santa.new("gender", "ethnicity")
#santa.speak
#santa.eat_milk_cookies("chocalate chip")
santa.get_mad_at("Rudolph")
santa.celebrate_birthday
santa.gender = "Woman"	
p santa
#Creating Santas in an initialize method with gender and ethnicity
santas = []
santas << Santa.new("agender", "black")
santas << Santa.new("female", "Latino")
santas << Santa.new("bigender", "white")

#Release 4 Creating muliple Santas with random genders, ethnicities, and ages.
example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]

100.times do
  gender = example_genders.sample
  ethnicity = example_ethnicities.sample
  santa = Santa.new(gender, ethnicity)
  santa.age = rand(141)
  puts "We have many diverse Santas here. This Santa is #{santa.age} years old, and they identifies as a #{santa.gender} and is #{ethnicity}." 
end


