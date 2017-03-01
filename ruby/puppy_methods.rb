#Let's teach our puppy some tricks
	#Need to add in initialize
class Puppy
	def initialize 
	    puts "Initializing new puppy instance ..."
	 end
 	#Fetch
	def fetch(toy)
		puts "I brought back the #{toy}!"
		toy
	end
	#Speak
	def speak(number)
		number.times do |x|
		puts "Woof!"
	end
	end
  	#Rollover
	def roll_over(command)
	    puts "roll over #{command}"
	end
  	#Dog Years
	def dog_years(age)
	   age.to_i * 7
	end
 	#Shake Command
	def shake(command)
	    puts "shake #{command}"
	end
 
end

puppy1 = Puppy.new
#Driver code
p puppy1.fetch("ball")
p puppy1.speak(5)
p puppy1.roll_over("Doggy")
p puppy1.dog_years(2)
p puppy1.shake("Doggy")

#My Own Class 
class Makeover
  def initialize 
    puts "You need a makeover!"
  end
  
  def haircut
    puts "Let's start with a haircut."
  end
  
  def new_makeup
    puts "Your makeup needs to be updated."
  end
end
#Container for instances
makeup_array = []

50.times do
victim = Makeover.new
makeover_array << victim
end
puts makeover_array.length
#Iterating everything 
makeover_array.each do |instances| 
  instances.haircut
  instances.new_makeup
end
