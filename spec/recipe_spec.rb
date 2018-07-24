describe Recipe do
  let(:dumplings) { describe_class.new(name: 'dumplings', servings: 6 ) }

  describe '#total_cost' do
    it 'it works out the total cost of the recipe' do
      expect(dumplings.total_cost).to eq(42)
    end
  end

   describe '#cost_of_one_serving' do
     it 'returns the cost of the one serving ' do
     expect(dumplings.cost_of_one_serving).to eq(1)
     end
   end

  describe '#ingredient_quantities_per_servings' do
    it 'should take positive arguments' do
      expect(dumplings.ingredient_quantities_per_servings(0)).to raise_error(ArgumentError)
      expect(dumplings.ingredient_quantities_per_servings(-1)).to raise_error(ArgumentError)
    end

    it 'it works out the ingredient quantities per n servings' do
      ingredients = dumplings.ingredient_quantities_per_servings(5)
      expect(ingredients[4]).to eq(457.8)
      expect(ingredients[1]).to eq(445.0)
    end
  end


  describe '#ingredient_quantities_per_one_serving' do
    it 'returns the ingredient quantities per one serving' do
      ingredients = dumplings.ingredient_quantities_per_one_serving
      expect(ingredients[0]).to eq(45.0)
      expect(ingredients[1]).to eq(44.0)
    end
  end
end
