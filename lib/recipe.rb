class Recipe < IngredientQuantity
  attr_reader :name, :servings_count, :ingredient_quantities

  def initialize(name, servings_count, ingredient_quantities)
    @name = name
    @servings_count = servings_count
    @ingredient_quantities = ingredient_quantities
  end

  def total_cost #total_cost of recipe
    ingredient_quantities.inject(0) { |sum, e| sum + e.total_cost }
  end

  def cost_of_one_serving
    total_cost / @servings_count.to_f
  end

  def ingredient_quantities_per_servings(servings_number)
    num = servings_number / servings_count.to_f
    @ingredient_quantities.map do |ingredient_quantity|
    ingredient_quantity.quantity *= num
    ingredient_quantity
    end
  end

  def ingredient_quantities_per_one_serving
    ingredient_quantities_per_servings(1)
  end
end
