require_relative 'WordGame'

describe WordGame do
	let(:wordgame) { WordGame.new("unicorn")}

	it "stores the word given on initialization" do 
		expect(wordgame.guessing_word).to eq "unicorn"
	end

	it "guess limited" do
		expect(wordgame.guess_limit).to eq 7
	end

	it "when game starts" do
		expect(wordgame.game_over).to eq false 
	end

	it "stores letters" do
		expect(wordgame.wrong_letter("w")).to eq ["w"]
	end

	it "word to dashes" do 
		expect(wordgame.hide_word).to eq "-------"
	end

	it "replace dash with letter" do 
		wordgame.hide_word
		expect(wordgame.show_letter("n")).to eq "-n----n"
	end

	it "guesses down by 1" do 
		expect(wordgame.guesses_left).to eq 6
	end

	 it "is game over" do
	 	expect(wordgame.is_over?).to eq false
	 end

	 it "is game over" do
	 	for i in 0..wordgame.guesses-1
	 	wordgame.guesses_left
	 	end
	 	expect(wordgame.is_over?).to eq true
	 end

	 it "is game over" do
	 	p wordgame.guessing_word
	 	p wordgame.hide_word
	 	p wordgame.show_letter("u")
	 	p wordgame.show_letter("n")
	 	p wordgame.show_letter("i")
	 	p wordgame.secret_word == "unicorn"
	 	p wordgame.show_letter("o")
	 	p wordgame.show_letter("c")
	 	p wordgame.show_letter("r")
	 	p wordgame.secret_word == "unicorn"
	 	expect(wordgame.is_over?).to eq true
	 end
end