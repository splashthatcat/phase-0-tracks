# New Employee Questionaire 

# Number of Employees
var employees = gets.chomp.to_i
until employees = 0
	print "Go back to the beginning."
end

# Initial Questions
puts "What's your name?"
alias = gets.chomp
print alias

puts "How old are you?"
age = gets.chomp.to_i
print age

puts "What year were you born"
year = gets.chomp.to_i
print year

puts "Our company cafeteria serves garlic bred. Should we order some for you?"
garlic_bread = gets.chomp
print garlic_bread

puts "Would you like to enroll in the company's health insurance?"
health_insurance = gets.chomp
print health_insurance

# Intial Answers
if var age <=100
print "Probably not a vampire."
elsif var age >= 150
print "Almost certainly a vampire."
else
print "Probably a vampire."
end

if var garlic_bread == "Yes!"
print "Probably not a vampire."
elsif var age garlic_bread == "Hell no!"
print "Almost certainly a vampire."
else 
print "Probably a vampire."
end

if var health_insurance == "Yes!"
print "Probably not a vampire."
elsif var health_insurance = "Hell no!"
print "Almost certainly a vampire."
else
print "Probably a vampire."
end

if alias = "Drake Cula"
print "Definately a vampire."
elsif alias = "Tu Fang"
print "Definately a vampire too."
else 
print "Results inconclusive."
end

# Additional Question & Answer
loop do 
puts "Do you have any allergies?"
answer = gets.chomp
if answer!= "sunshine"
print "Probably a vampire."
else
print "Hit DONE when finished"
break
end
end

# The End
print "Actually, never mind! What do these questions have to do with anything? Let's all be friends."


