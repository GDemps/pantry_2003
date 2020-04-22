require 'minitest/autorun'
require 'minitest/pride'
require './lib/ingredient'
require './lib/pantry'
require './lib/recipe'

class RecipeTest < Minitest::Test

  def test_attributes
    recipe1 = Recipe.new("Mac and Cheese")
    assert_equal "Mac and Cheese", recipe1.name
  end

  def test_ingredients_required
    recipe1 = Recipe.new("Mac and Cheese")
    assert_equal ({}), recipe1.ingredients_required
  end

  def test_add_ingredients
    recipe1 = Recipe.new("Mac and Cheese")
    ingredient1 = Ingredient.new({name: "Cheese", unit: "C", calories: 100})
    ingredient2 = Ingredient.new({name: "Macaroni", unit: "oz", calories: 30})
    assert_equal 2, recipe1.add_ingredient(ingredient1, 2)
    assert_equal 6, recipe1.add_ingredient(ingredient1, 4)
    assert_equal 8, recipe1.add_ingredient(ingredient2, 8)

  end
end
