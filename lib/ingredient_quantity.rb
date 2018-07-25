class IngredientQuantity < Ingredient

  attr_reader :ingredient, :quantity

  def initialize (ingredient, quantity)
    @ingredient = ingredient
    @quantity = quantity
  end

  def sum(other)
    if other.ingredient = @ingredient
      IngredinetQuantity.new(@ingredient, other.quantity + @quantity)
    else
      raise ArgumentError
    end
  end

  def *(other)
    IngredinetQuantity.new(@ingredient, @quantity * other)
  end

   def total_cost
     total_price ||= 0
     total_price = @quantity * @ingredient.cost
   end
end
