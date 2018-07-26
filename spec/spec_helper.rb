
module Helpers

  def portion(ingredient, quantity:)
    IngredientQuantity.new(ingredient, quantity)
  end

   def soup(servings:)
     meat = portion(meat(cost: 80), quantity: 750)
     dough = portion(dough(cost: 100), quantity: 1100)
     Recipe.new('dumplings', servings, [meat, dough])
   end

end
