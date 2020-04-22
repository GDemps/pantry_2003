class Recipe

  attr_reader :name,
              :ingredients_required,
              :ingredients

  def initialize(name)
    @name = name
    @ingredients_required = {}
  end

  def add_ingredient(ingredient, amount)
    if @ingredients_required[ingredient] == nil
      ingredients_required[ingredient] = amount
    else
      ingredients_required[ingredient] + amount = amount
    end

  end

  def ingredients
    self.ingredients_required.keys
  end

end
