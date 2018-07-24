describe MealServing do
  let(:recipe) { Recipe.new('dumplings', 21) }
  let(:dumplings) { describe_class.new(recipe, 3) }


  describe '#total_ingredient_quantities' do
    it 'works out the ingredient quantities' do
      expect(dumplings[0].total_ingredient_quantities).to eq(490)
      expect(dumplings[1].total_ingredient_quantities).to eq(94540)
    end
   end

   describe '#total_cost' do
     it 'it works out the total cost of the meal serving' do
       servings.times = 17
       expect(servings.total_cost).to eq(23)
      end
   end
end
