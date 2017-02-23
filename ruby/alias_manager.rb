#Create An Alias
def next_vowel(letter)
	if letter == "u" 
		code_let = "a"
	else
		alph = "aeiou"
		currlet = alph.index(letter) 
		code_let = alph[currlet + 1] 
	end
	code_let
end

def next_consonant(letter)
	if letter == "z" 
		code_let = "b"
	else
		alph = "bcdfghjklmnpqrstvwxyz"
		currlet = alph.index(letter) 
		code_let = alph[currlet + 1] 
	end
	code_let
end

def alias(name)
	#Here's Where We Swap The First And The Last Name
	new_alias = name.split(' ')
	new_alias = new_alias.insert(1, " ") 
	new_alias.reverse! 
	alias_string = new_alias.join('')
	new_alias = alias_string.split('') 

	final_alias = ""
	new_alias.each do |letter|
		if ("aeiou".include? letter)
		#Change That Vowel To Next Vowel
			encrypt_letter = next_vowel(letter)
			final_alias += encrypt_letter
		elsif ("bcdfghjklmnpqrstvwxyz".include? letter)
		#Change Consonant To Next Consonant
			encrypt_letter = next_consonant(letter)
			final_alias += encrypt_letter
		#Keep Everything Else 
		else
			final_alias += letter
		end
	end
	final_alias
end
#User Interface
input = ""
store_names = {}
until input == "EXIT"
	puts "What is your name, agent?"
	puts "Please input a name to scramble or type EXIT."
	input = gets.chomp
	if input != "EXIT"
		store_names[input] = to_alias(input)
		alias(input)
	end
end

store_names.each do |real_name, alias_name|
	puts "#{alias_name} is the alias for #{real_name}. Use this information wisely, agent."
end
