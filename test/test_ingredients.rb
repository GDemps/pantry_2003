require 'minitest/autorun'
require 'minitest/pride'
require './lib/ingredient'
require './lib/pantry'

class IngredientTest < Minitest::Test

  def test_attributes
    ingredient1 = Ingredient.new({name: "Cheese", unit: "oz", calories: 50})
    assert_equal "Cheese", ingredient1.name
  end

end
