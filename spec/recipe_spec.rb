describe Recipe do
   subject(:recipe) { dumplings(servings: 8) }

  describe '#total_cost' do
    it 'it works out the total cost of the recipe' do
      expect(recipe.total_cost).tto be_within(0.001).of(100.0)
    end
  end

   describe '#cost_of_one_serving' do
     it 'returns the cost of the one serving ' do
     expect(recipe.cost_of_one_serving).to be_within((0.001).of(75.25))

     recipe.servings_count = 1
     expect(recipe.cost_of_one_serving).to be_within(0.001).of(155)
     end
   end

  describe '#ingredient_quantities_per_servings' do
    it 'take positive arguments' do
      expect(recipe.ingredient_quantities_per_servings(0)).to raise_error(ArgumentError)
      expect(recipe.ingredient_quantities_per_servings(-1)).to raise_error(ArgumentError)
    end

    it 'it works out the ingredient quantities per n servings' do
      ingredient_list = recipe.ingredient_quantities_per_servings(3)
        expect(ingredient_list[0].quantity).to be_within(0.001).of(3)
        expect(ingredient_list[1].quantity).to be_within(0.001).of(9)

        ingredient_list = recipe.ingredient_quantities_per_servings(6)
        expect(ingredient_list[0].quantity).to be_within(0.001).of(36)
        expect(ingredient_list[1].quantity).to be_within(0.001).of(54)

    end
  end


  describe '#ingredient_quantities_per_one_serving' do
      it 'returns the ingredient quantities per one serving' do
      ingredients = recipe.ingredient_quantities_per_one_serving
      expect(ingredients[0]).to eq(150.0)
      expect(ingredients[1]).to eq(44.0)
    end
  end
end
