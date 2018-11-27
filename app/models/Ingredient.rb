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
end
