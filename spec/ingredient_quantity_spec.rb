describe IngredientQuantity do
  let(:ingredient) { Ingredient.new('tomato', 21) }
  let(:ingredient_quantity) { describe_class.new(ingredient, 3) }

  #let(:pepper) { describe_class.new(name: 'pepper', cost:100, quantitit:45)} #or subject
  describe '#total_cost' do
    it "it works out the cost of the ingredient in some quantity" do
        expect(ingredient_quantity.total_cost).to eq(42)
      end
    end

  describe '#+' do
    iq = IngredientQuantity.new
    context 'when amount of ingridients are the same ' do
      it 'sum the quantity of ingredients' do
        expect(iq.sum(1,2).to eql(3))
      end
    end
    context 'when ingridients are different ' do
      it 'should`t add ' do
        expect(iq.sum(1,2).not_to eql(3))
      end
    end
  end

  describe '#*' do
    it "multiplies quantity by the input argument" do
      expect(ingredient_quantity.multiply(1,2).to eq(4))
   end
    it "will not multiply non positive numbers" do
      expect(ingredient_quantity * 0).to raise_error(ArgumentError)
      expect(ingredient_quantity * -2).to raise_error(ArgumentError)
    end
  end
end
