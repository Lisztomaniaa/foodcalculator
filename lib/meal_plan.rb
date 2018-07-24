class MealPlan
  attr_reader :name, :individuals_count, :meal_servings
  def initialize(name, individuals_count, meal_servings)
    self.name = name
    self.meal_servings = meal_servings
    self.individuals_count = individuals_count
end
end
