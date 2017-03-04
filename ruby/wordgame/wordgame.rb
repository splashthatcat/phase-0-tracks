#Word Game
class WordGame
	attr_reader :word, :guesses, :game_over, :letters, :secret_word
	attr_writer :secret_word, :guesses

	def initialize(word)
		@word = word
		@guesses = word.length
		@game_over = false
		@letters = []
	end

	def guessing_word
		word
	end

	def guess_limit
		guesses 
	end

	def guesses_left
		@guesses -= 1
		guesses
	end

	def wrong_letter(letter)
		letters << letter
		letters
	end

	def hide_word
		@secret_word = guessing_word.tr(guessing_word, "-")
  		secret_word 
	end

	def show_letter(letter)
		for i in 0..guessing_word.length-1
			if guessing_word[i] == letter
			     secret_word[i] = letter
			     secret_word
			end
			if guessing_word[i] == letter.upcase
			     secret_word[i] = letter.upcase
			     secret_word
			end 
		end 
	 secret_word
	end

	def is_over?
		if guesses <= 0
			@game_over = true	
		elsif secret_word == guessing_word
			@game_over = true	
		else
			@game_over
		end
		@game_over			
	end
end

#User Interface
puts "Here's Your Damn Word Game."
puts "Now Guess The Word, Stupid."
puts "Should I Bother With Rules? Here You Go:"
puts "Guess Only One Word At A Time."
puts "We're Limiting Your Guess To the Length Of The Word."
puts "EVERYTHING (INCLUDING BLANKS AND SYMBOLS) IS INCLUDED. "
puts "Alright, Let's Play."

#Where The User Can Enter Their Chosen Word
puts "Enter Your Chosen Word, Player #1."
		word = gets.chomp 
	wordgame = WordGame.new(word)

	

1000.times{print "Guess"}
puts "\n"
puts "---------------------------------------------------------------------------------"
 puts "Player 2, you have #{wordguess.guesses} guesses and your word is: '#{wordguess.hide_word}'"
 puts "Try not to screw up your guess: "
 guessing_letter = gets.chomp
 wordgame.guesses
 wordgame.letters
 wordgame.secret_word

until wordgame.game_over == true
	if wordgame.guessing_word.include?guessing_letter.downcase
		wordgame.show_letter(guessing_letter.downcase)
	 	puts "Okay, you're MAYBE not stupid."
	 	wordgame.secret_word
	elsif wordgame.guessing_word.include?guessing_letter.upcase
		wordgame.show_letter(guessing_letter.upcase)
	 	puts "What? You got it right."
	 	wordgame.secret_word
	else
		if wordgame.letters.include?guessing_letter
	  	  	if wordgame.is_over? == true
	  	    	break
	  	  	end
	 		puts "Go watch TV."
	 	else
		 	wordgame.wrong_letter(guessing_letter)
		 	 wordgame.guesses_left
    	  if wordgame.is_over? == true
    	    break
    	  end
		 	puts "Seriously, give up."
		 end
	end

	if wordguess.is_over? == true
    	    break
 	end
puts "You have #{wordguess.guesses} guesses left and your word is: '#{wordguess.secret_word}'"
puts "Your letter guess is: "
	guessing_letter = gets.chomp
end

puts "---------------------------------------------------------------------------------"
if wordguess.secret_word == wordguess.guessing_word
	puts wordguess.secret_word
	puts "WE HAVE A WINNER. SURPRISINGLY."
else
	puts wordguess.guessing_word
	puts "YOU'RE THE WORST."
end

