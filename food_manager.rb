require_relative "./food"

class FoodManager
  attr_reader :foods

  def initialize
    @foods = [] # initializes an empty array to store food items.
  end
  
  def run
    loop do   #loop for the food management system
      puts "\n"
      puts "Welcome to the Food Management System!"
      puts "1. Add Food"
      puts "2. List all Foods"
      puts "3. Exit"
      print "Choose an option: "
      option = gets.chomp.to_i
      puts "\n"

      case option
      when 1
        add_food_menu
      when 2
        list_foods
      when 3
        puts "Thank you for using the Food Management System. Goodbye!"
        break
      else
        puts "Invalid option. Please try again."
      end
    end
  end

  
  #gain users food details and additions.
  def add_food_menu
    print "Enter food name: "
    name = gets.chomp
    print "Enter food category: "
    category = gets.chomp
    print "Enter quantity: "
    quantity = gets.chomp.to_i

    add_food(name, category, quantity)
  end

def initialize
  @foods = []
end
  # creates a new instance of food and adds it to the @foods array
def add_food(name, category, quantity)
  @foods << Food.new(name, category, quantity)
  puts "Food added successfully!"
end
#displays a list of foods in the collection and if they exist or not.
def list_foods  
  puts "Foods in the collection:"
  if @foods.empty?
    puts "(No foods)\n" 
  else
    @foods.each do |food|
      puts food
    end
  end
end
end


# FoodManager.new.run
