require 'minitest/autorun'
require_relative '../food_manager'
# Test adding a food to the FoodManager
class TestFoodManager < Minitest::Test
  def test_add_food
    food_manager = FoodManager.new

    #test adding a food
    food_manager.add_food("Apple", "Fruit", 5)
    assert_equal 1, food_manager.foods.length, "Adding food failed"

    #testing adding an additional food.
    food_manager.add_food("Pizza", "Fast Food", 2)
    assert_equal 2, food_manager.foods.length, "Adding another food failed"
  end
  def test_list_foods
    food_manager = FoodManager.new
  
    #test foods if collection is empty
    assert_output(/Foods in the collection:\n?\(No foods\)\n?/) { food_manager.list_foods }

    #test foods after adding them.
    food_manager.add_food("Banana", "Fruit", 3)
    food_manager.add_food("Salad", "Vegetable", 1)
  
    assert_output(/Foods in the collection:\nBanana \(Category: Fruit, Quantity: 3\)\nSalad \(Category: Vegetable, Quantity: 1\)/) { food_manager.list_foods }
  end






end
