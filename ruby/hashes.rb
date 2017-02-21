#Client Overview

#Necessary Client Details
	#Name, Age, Number of Children, Decor Theme, Budget
  def assign_to_hash
  user_info = {"name" => nil, "age" => nil, "number_of_children" => nil, "decor_theme" => nil, "budget" => nil}
    user_info.each do |key, value|
      puts "What is your client's #{key}?"
      user_info[key] = gets.chomp
      puts "Your client's #{key} is #{user_info[key]}."
    end
    #Prompt for updates and convert data to appropriate type
    	#Gives the user the opportunity to update each key
    p user_info
    puts "Are there any updates needed? If so, enter Yes, if not enter No."
    response = gets.chomp.capitalize
    if response == "Yes"
      puts "Which information would you like to update: name, age, number of children, desired decor theme, or budget?"
      choice = gets.chomp
      if choice == "name"
        puts "What name would you like to input?"
        user_info["name"] = gets.chomp
        puts "Your newly inputted name is #{user_info["name"]}."
      elsif choice == "age"
        puts "What age would you like to input?"
        user_info["age"] = gets.chomp.to_i
        puts "Your newly inputted name is #{user_info["age"]}."
      elsif choice == "number of children"
        puts "What number of children would you like to input?"
        user_info["number_of_children"] = gets.chomp.to_i
        puts "Your newly inputted name is #{user_info["number_of_children"]}."
      elsif choice == "decor theme"
        puts "What decor theme would you like to input?"
        user_info["decor_theme"] = gets.chomp
        puts "Your newly inputted name is #{user_info["decor_theme"]}."
       elsif choice == "budget"
        puts "What budget would you like to input?"
        user_info["budget"] = gets.chomp.to_i
        puts "Your newly inputted name is #{user_info["budget"]}."
      else
        puts "Are you really sure that there's no information for you to update?"
      end
      #Print updated and current info for each client
      p "This is your updated user info: #{user_info}."
    else
      p "This is your current user info: #{user_info}."
    end

  end
