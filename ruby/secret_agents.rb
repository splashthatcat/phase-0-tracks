#Intro
	#Ask if the agent accepts their mission
puts "Agent, do you accept your mission?"
	mission = gets.chomp
	if mission = yes
print "Chill out. This program just encrypts or decrypts passwords."
	#Ask for the password
puts "What's the password?"
	password = input
#Encrypt Method
	#Advances every letter of a string one letter forward
def encrypt (input)
	index = 0
	string = ""
	while index < input.length
		if input[index] == "z"
			string += "a"
		else
			letters = input[index].next
			string += letters
		end
		index += 1
	end
	puts string
end

#Decrypt Method
	#Reverses moving the letters forward
def decrypt (input)
	index = 0
	string = ""
	a_to_z = "abcdefghijklmnopqrstuvwxyz !"
 	while index < input.length
 		if input[index] == "a"
 			string += "z"
 		else
	 		letters = a_to_z.index(input[index].downcase)
	 		string += a_to_z[letters - 1]
 		end
 		index += 1
 	end
 	puts string
end

#encrypt("abc") should return "bcd"
#encrypt("zed") should return "afe"
#decrypt("bcd") should return "abc"
#decrypt("afe") should return "zed"
#Why does decrypt(encrypt("swordfish")) work? Ruby reads encrypt first. Then descrypt.

print "You're done. Exit the program."