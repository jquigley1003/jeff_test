class GroceryList

  def initialize(items)
    @items = items
    
  end

  def to_s
    @items.join(",")
  end

  def items
    @items
  end

  def random_item
    @random_item
  end

  def grabbed_item
    @grabbed_item
  end

  def self.get_grocery_list
    @items = IO.read("grocery_list.txt").chomp.split(", ")
    puts "Current Grocery List:"
    @items.map { |item| puts "#{item}" }
  end

  def select_random_item(groceries)
    @random_item = groceries.sample
    puts "Did you grab the #{@random_item}? (Y/N)"
    @grabbed_item = gets.chomp.downcase
    if @grabbed_item == "y"
      groceries.delete(@random_item)
    end
  end
end