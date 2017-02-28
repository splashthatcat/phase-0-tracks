#Create a new list and add,remove, update and print the list. 

#Method to create a list
def grocery_list(grocery_items)
  grocery = {}
  item = grocery_items.split(" ")
  item.each do |product|
  grocery[product] = 3
  end 
  display_list(grocery)
end 

#Method to add an item to a list
  def add_item (grocery, item_name, quantity)
   grocery[item_name] = quantity
   display_list(grocery)
  end

#Method to remove an item from the list
  def delete_item (grocery, item_name)
    grocery.delete(item_name)
    display_list(grocery)
  end

#Method to update the quantity of an item
  def update_quantity (grocery, item_name, new_quantity)
  grocery[item_name] = new_quantity
  display_list(grocery)
  end

#Method to print a list and make it look pretty
def display_list(grocery)
  grocery.each do |item, quantity|
  puts "Item name: #{item} quantity is : #{quantity}"
  end
end

#Tests
add_item(grocery, "Tomatoes", 3)
add_item(grocery, "Lemonade", 2)
add_item(grocery, "Onions", 1)
add_item(grocery, "Ice Cream", 4)
delete_item(grocery, "Lemonade")
update_quantity(grocery, "Ice Cream", 1)
display_list grocery

#Reflections

  #What did you learn about pseudocode from working on this challenge?
    #Pseudocode is useful for working out one's thoughts during coding.
  #What are the tradeoffs of using arrays and hashes for this challenge?
    #An array is just a list of data. Using a hash, we can categorizethat data.
      #It's better to than categorized data than uncategorized data.
  #What does a method return?
    #A method returns whatever you pass into it.
  #What kind of things can you pass into methods as arguments?
    #You can pass required arguments and optional arguments.
  #How can you pass information between methods?
    #You pass information in a method name.
    #You can hang a block off the method of code.
  #What concepts were solidified in this challenge, and what concepts are still confusing?
    #This challenge definately solidfied calling methods. All of Ruby is still confusing, but I'm learning.

