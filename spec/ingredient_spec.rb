require 'ingredient'
require 'ingredient_quantity'
require 'recipe'
require 'meal_serving'

describe Ingredient do
  describe '#== ' do
    let(:pomodoro) { describe_class.new(name: 'Tomato', cost:100)} #or subject
    let(:pomodoro) { describe_class.new(name: 'Tomato', cost:100)}

  context 'when ingridients are eaquel ' do
   it 'they aare truly eqaul' do
         expect(pomodoro).to eq(tomato)
    end
   end
     context 'when ingridients are different ' do
     let(:potato) { describe_class.new(name: 'Potato', cost:90)}
      it 'they are not  eqaul' do
        expect(pomodoro).to eq(tomato)
      end
   end
  end
 end
