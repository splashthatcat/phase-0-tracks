#Write A Ruby Program That Uses Persistent Data To Improve Someone's Life
#Need To Connect This Project To the Database

require 'sqlite3'

db = SQLite3::Database.new("checklist.db")

#Where We Create A Table With All The Necessary Variables
create_table = <<-SQL
  CREATE TABLE IF NOT EXISTS list(
    id INTEGER PRIMARY KEY,
    month VARCHAR (255),
    day VARCHAR(255),
    to_do VARCHAR(255),
    completed BOOLEAN
    )
  SQL

db.execute(create_table)

#Add All Your Methods Here

def add_to_list(db, month, day, to_do, completed)
  db.execute("INSERT INTO list (day, to_do, completed) VALUES (?, ?, ?)", [day, to_do, completed])
end

def take_off_list(db, to_do)
  db.execute("DELETE FROM list WHERE to_do=?", [to_do])
end

def update_day(db, month, day, to_do)
  db.execute("UPDATE list SET day=? WHERE to_do?", [day, to_do])
end

def update_item(db, to_do, id)
  db.execute("UPDATE list SET to_do=? WHERE id=?", [to_do, id])
end

def update_complete_status(db, completed, to_do)
  db.execute("UPDATE list SET completed=? WHERE to_do=?", [completed, to_do])
end

#Add A Cheery Interface Here
puts "How are you today? I hope that you're having a good day!"

loop do
  puts "Do you need to add something to your daily checklist, yes or no?"
  answer = gets.chomp.downcase
    if answer == 'yes'
    	puts "What do you need to add to your list?"
    	item = gets.chomp.downcase
    	puts "What month and day would you like to add this to?"
    	day = gets.chomp.downcase
    	puts "Are you finished? True or False?"
    	done = gets.chomp.downcase
    else
    	break
    end
add_to_list(db, day, month, item, done)
end

#Loop To Check Off The Items Added To The List
loop do 
  puts "Have you completed anything on your checklist? Yes or no?"
  remove_from_list = gets.chomp.downcase
    if remove_from_list == 'yes'
    	puts "What did you accomplish?"
    	deleted = gets.chomp.downcase
    take_off_list(db, deleted)
    else remove_from_list == 'no'
    	puts "Sounds good! I will let you continue on your day."
    	break
    end
end

#Another Loop To Update The List
loop do 
  puts "Do you need to update your list again? Yes or no?"
  update = gets.chomp.downcase
    if update == 'yes'
    	puts "What task do you need to update?"
    	answer = gets.chomp.downcase
    	if answer == "day" or "month"
    		puts "Which day or month would you like to update and what item on your checklist?"
    		day = gets.chomp.downcase
        month = gets.chomp.downcase
    		item1 = gets.chomp.downcase
    	elsif answer == 'item'
    		puts "What's the id number of the task that you want to update?"
    		changed_item = gets.chomp.downcase
    		id = gets.chomp.to_i
    	else answer == "finished"
    		puts "Have you really finished this task?"
    		boolean = gets.chomp.downcase
    		item2 = gets.chomp.downcase
    	end
    else
    	puts "Okay! I believe you! List updated!"
    	break
    end

update_day(db, day, item1)
update_item(db, changed_item, id)
update_complete_status(db, boolean, item2)
end

#Let's End On A Cheerful Note
puts "You're done for the day! Go relax!"


