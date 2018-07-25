
class Ingredient
  attr_reader :name, :cost

  def initialize (name, cost)
    @name = name
    @cost = cost
  end

  def ==(other)
  @name == other.name && @cost == other.cost
  end


end
