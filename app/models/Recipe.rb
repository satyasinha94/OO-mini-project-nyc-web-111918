class Recipe
  @@all = []
  def self.all
    @@all
  end
  attr_reader :user, :name, :allergen
  def initialize(name)
    @name = name
    @@all << self
  end

  def recipe_cards
    RecipeCard.all.select do |object|
      object.recipe == self
  end
end

  def recipe_ingredients
    RecipeIngredient.all.select do |object|
      object.recipe == self
  end
end

  def self.most_popular
    self.all.max_by {|recipe| recipe.recipe_cards.length}
    #binding.pry
  end

  def users
    self.recipe_cards.map {|object| object.user.name}
    #binding.pry
  end

  def ingredients
    self.recipe_ingredients.map do |object|
    object.ingredient.ingredients
    #binding.pry
    end
  end

  def add_ingredients(ingredients)
    RecipeIngredient.new(ingredients, self)
  end
end
