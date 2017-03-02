#Shout Module
	#Declare The Module
module Shout
   #def self.yell_angrily(words)
        #words + "!!!" + " :("
   #end

  	#def self.yelling_happily(words)
		#words + "This is awesome"
	#end

#end

#puts Shout.yell_angrily("HELLLOO WORLD!!!")
#puts Shout.yelling_happily("GOODBYE WOORLD!!!")
end
class Excited_Friend
	include Shout
end

class Bad_Boyfriend
	include Shout
end

mom = Excited_Friend.new
p friend.lecture("Hey, girl, how are you?")
kid =  Bad_Boyfriend.new
p boyfriend.horrible("I cheated on you.")

 def happy_birthday(words)
 	words + "Happy birthday to you!"
 end

 def happy(words)
 	words + " ,You are the best!"
end