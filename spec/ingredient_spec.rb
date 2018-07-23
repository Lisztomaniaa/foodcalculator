require 'ingredient'
require 'ingredient_quantity'
require 'recipe'
require 'meal_serving'

describe Ingredient do
  describe '#== ' do
    let(:pomodoro) { describe_class.new(name: 'Tomato', cost:100)} #or subject
    let(:pomodoro) { describe_class.new(name: 'Tomato', cost:100)}

<<<<<<< HEAD
  context 'when ingridients are eaquel ' do
   it 'they aare truly eqaul' do
         expect(pomodoro).to eq(tomato)
    end
   end
=======
    context 'when ingridients are eaquel ' do
      it 'they aare truly eqaul' do
        expect(pomodoro).to eq(tomato)
      end
    end
    
>>>>>>> dc457f9268f7901abacf8e52c7b9e497c3133c0d
     context 'when ingridients are different ' do
     let(:potato) { describe_class.new(name: 'Potato', cost:90)}
      it 'they are not  eqaul' do
        expect(pomodoro).to eq(tomato)
      end
   end
  end
 end




  describe Recipe do
    let(:dumplings) { describe_class.new(name: 'dumplings', servings_count: 6 ) }
    let(:iq) {IngredientQuantity.new}
    describe '#total_cost' do
      it 'it works out the cost of the recipe' do
        expect(ingredient_quantity.total_cost).to eq(42)
      end
<<<<<<< HEAD
=======
    end
end


  describe Recipe do
    let(:dumplings) { describe_class.new(name: 'dumplings', servings_count: 6 ) }
    let(:iq) {IngredientQuantity.new}
    describe '#total_cost' do
      it 'it works out the cost of the recipe' do
        expect(ingredient_quantity.total_cost).to eq(42)
      end 
>>>>>>> dc457f9268f7901abacf8e52c7b9e497c3133c0d
   end

   describe '#cost_of_one_serving' do
    it 'returns the total cost of the one serving of this dish' do
      expect(dumplings.cost_of_one_serving).to eq('dumpligs', 1)
    end
   end

    describe '#ingredient_quantities_per_servings' do
      it 'returns an array of ingredient ' do
       expect(@iq.ingredient_quantity).to match([1,34,2,1])
<<<<<<< HEAD
      end
=======
      end  
>>>>>>> dc457f9268f7901abacf8e52c7b9e497c3133c0d
    end


    describe '#ingredient_quantities_per_one_serving' do
      it 'returns the ingredient quantities per one serving' do
     end
    end

    describe MealServing do
      let(:class_a) { describe_class.new(Recipe: 'dumplings', times: 12 ) }
      let(:group_42){ describe_class.new(Recipe: 'uzvar', times: 42 ) }

      describe '#total_ingredient_quantities' do

       iq=IngredientQuantity.new
       it 'Returns the total cost of served meals' do
       end
     end

    describe '#total_cost' do
      it "it works out the cost of the meal serving" do
        expect(class_a.total_cost).to eq(42)
      end
    end
   end


    describe Mealplan do #still working

      describe '#grouped_ingredient_quantities' do
        it ' ' do

       end
    end

  describe '#total_cost' do
  end
    end
end
