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


  def recipe_cards
    RecipeCard.all.select do |recipe_card|
      recipe_card.user == self
      #binding.pry
      end
  end

  def recipes
    self.recipe_cards.map {|object| object.recipe}
  end

  def declare_allergen(ingredient)
    Allergen.new(ingredient, self)
  end

  def allergens
    Allergen.all.select do |allergen|
      allergen.user == self
    end
  end

  def most_recent_recipe
    recipe_cards.max_by{|recipe_card| recipe_card.date}
  end

  def top_three_recipes
    recipe_cards.sort_by{|recipe_card| recipe_card.rating}.reverse[0..2]
  end

end
