require 'pry'
class User
  @@all =[]
  def self.all
    @@all
  end
  attr_reader :name, :allergens
  def initialize(name) #recipes = [])
    @name = name
    #@allergen = allergen
    #@recipes = recipes
    @@all << self
  end

  def add_recipe_card(recipe, date, rating)
    RecipeCard.new(date, rating, self, recipe)
  end

  def recipes
    RecipeCard.all.map do |object|
      if object.user == self
        object.recipe
        #binding.pry
      end
    end.compact
  end

  def declare_allergen(ingredient)
    Allergen.new(ingredient, self)
  end
  #binding.pry

  def allergens
    Allergen.all.map do |object|
      if object.user == self
        object.ingredient
      end
    end
  end
end
