describe Mealplan do
  let(:uzvar) { MealServing.new(Recipe: 'uzvar', times: 12, meal_servings:4 ) }
  let(:soup) { MealServing.new(Recipe: 'borsch', times: 12, meal_servings:8 ) }
  let(:dumplings) { MealServing.new(Recipe: 'meat_dumplings', times: 2, meal_servings:2)}

  let(:group_42){ describe_class.new(Recipe: 'prom', individuals: 42)[uzvar, soup] }
  let(:class_a) { describe_class.new(Recipe: 'exams', individuals: 12)[dumplings] }


  describe '#grouped_ingredient_quantities' do
    let(:ingredient) { Ingredient.new('tomato', 21) }
    let(:ingredient_quantity) { describe_class.new(ingredient, 3) }
    it ' groups ingridients ' do
      expect(group_42.grouped_ingredient_quantities). to eq(22)
      expect(class_a.grouped_ingredient_quantities). to eq(2)
      exepct(class_a.include?(ingredient_quantity))
      exepct(group_42.include?(ingredient_quantity))

    end
  end

  describe '#total_cost' do
     it 'it works out the total cost ' do
       expect(group_42.total_cost). to eq(22)
       expect(class_a.total_cost). to eq(2)
     end
   end
end
