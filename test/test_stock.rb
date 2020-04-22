require 'minitest/autorun'
require 'minitest/pride'
require './lib/ingredient'
require './lib/pantry'

class StockTest < Minitest::Test

  def test_pantry_stock
    ingredient1 = Ingredient.new({name: "Cheese", unit: "oz", calories: 50})
    pantry = Pantry.new
    assert_equal ({}), pantry.stock
    assert_equal 0, pantry.stock_check(ingredient1)
  end

  def test_restock
    pantry = Pantry.new
    ingredient2 = Ingredient.new({name: "Macaroni", unit: "oz", calories: 200})
    pantry.restock(ingredient2, 7)
    assert_equal 7, pantry.stock_check(ingredient2)
  end

end
