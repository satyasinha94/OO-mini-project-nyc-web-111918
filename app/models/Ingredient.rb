class Ingredient

@@all = []

attr_reader :user, :allergen, :ingredients

def initialize(ingredients)
  @ingredients = ingredients
  @@all << self
end


  def self.all
    @@all
  end

  def self.allergens
    Allergen.all.select{|allergen| allergen.ingredient}
  end

  def self.most_common_allergen
    allergen_ingredients = allergens.map {|allergen| allergen.ingredient}
    allergen_hash = allergen_ingredients.inject(Hash.new(0)) { |h,v| h[v] += 1; h }
    allergen_hash.max_by {|k, v| v}
    end
  end
