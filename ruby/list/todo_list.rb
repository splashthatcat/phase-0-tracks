#Here's The Class To Make The Other Code Run
class TodoList
  def initialize(original_things)
    @original_things = original_things
  end
   
  def get_items
    @original_things
  end

  def add_item(item)
    @original_things << item
  end

  def delete_item(item)
    @original_things.delete(item)
  end

  def get_item(index)
  	@original_things[index]
  end
end