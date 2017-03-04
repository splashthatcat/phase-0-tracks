class Dancer

#Name
def dancer_name
	print "Misty Copeland"
end

#Age
def dancer_age
	print "Just turned 33"
end

#Moves - Twirls & Bows
def dancer_moves
var dancer_moves = gets.chomp
	if dancer_moves = "pirouette"
	print "*Twirls*"
	elsif dancer_moves = "bow"
	print "*Bows*"
	else
	print "*Stares Angrily At You*"
end

#Dance Card
def dance_card
	temp = self.randomize
    temp.each {|x| yield x}
   end

  end

  dancers = %w(Mikhail Baryshnikov Anna Pavlova)
  list = ""
  dancers.random_each {|x| list += "#{x} "}

 #Available Tutu Colors
 def tutu_colors
 	print "Tutus available in all shadows of the rainbow."
 end
