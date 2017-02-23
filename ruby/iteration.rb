#First A Block
	#Needs To Print Out A Status Message
def say_goodbye
	name = "Chris"
	puts "Goodbye, you jerk!"
	yield (name)
end

say_goodbye { |name| puts "Go away. You're the worst, #{name}."

#Now An Array And A Hash
	#Iterate With .each and then .map!
		#Will Need To Print The Data Structure Before And After

#This Is My Array
favorite_cosmetics = ["Clinque Pink Honey Almost Lipstick", "Loreal Lumi Cushion", "Nars Exhibit A Blush", "Glossier Quartz Highlighter"]

#This Is My Array On .each
favorite_cosmetics do |favorite_cosmetics|
	favorite_cosmetics = favorite_cosmetics.next
end

puts "After .each call:"
	p favorite_cosmetics

#This Is My Array On .map!
favorite_cosmetics.map! do |favorite_cosmetics|
	puts favorite_cosmetics
	favorite_cosmetics.next
end

puts "Here:"
p favorite_cosmetics

#This Is My Hash
favorite_cosmestics_by_category = {:blush => 'Nars Exhibit A', :lipstick => 'Lipstick Queen Eden', :highlighter => Glossier Quartz}

#This Is My Hash On .each
favorite_cosmestics_by_category.each do |cosmestic, category|
	puts "#{cosmestic} is a #{category}."
end

#Cannot Use .map! On A Hash

#More Practice With Hashes And Arrays
puts "Here's some hashes and arrays:"
p random_numbers = [20, 30, 44, 100, 300]
p prices = {:shirt => 10, :skirt => 30, :shoes => 40, :socks => 5}

puts "Delete items if they meet a certain condition:"

#Iterate through the array, deleting any that meet certain condition
puts "The array after deleting even numbers:"
random_numbers.delete_if{|num| num%2 == 0}
p random_numbers

#Iterate through the hash, deleting any that meet certain condition
puts "Delete expensive clothing:"
prices.delete_if{|name, price| price > 45}
p prices

#Iterate through the object, keeping any that meet certain condition
puts "Now let's keep items if they meet certain condtions:"
random_numbers = [20, 30, 44, 100, 300]
prices = {:shirt => 10, :skirt => 30, :shoes => 40, :socks => 5}

#The array
puts "The array after keeping only even numbers:"
random_numbers.keep_if{|num| num%2 == 0}
p random_numbers

#The hash
puts "The hash after keeping only expensive clothing:"
prices.keep_if{|name, price| price > 45}
p prices

#Iterate through the object, keeping any that meet certain condition
puts "Keep items if they meet certain condtions using a DIFFERENT method."
random_numbers = [20, 30, 44, 100, 300]
prices = {:shirt => 10, :skirt => 30, :shoes => 40, :socks => 5}

#The array
puts "The array after keeping only numbers greater than or equal to 7:"
random_numbers.select!{|num| num >= 7}
p random_numbers

#The hash
puts "The hash after keeping only super cheap clothing:"
prices.select!{|name, price| price <= 10}
p prices

#Remove items from structure until a certain condition is met
puts "Let's remove items until a certain condition is met, after which all items are kept"
random_numbers = [20, 30, 44, 100, 300]
prices = {:shirt => 10, :skirt => 30, :shoes => 40, :socks => 5}

#The array
puts "The array after deleting numbers before 13:"
random_numbers = random_numbers.drop_while{|num| num < 13}
p random_numbers

