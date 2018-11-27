class RecipeCard
  @@all = []
  def self.all
    @@all
  end
  attr_reader :date, :rating, :user, :recipe

  def initialize(date, rating, user, recipe)
    @date = date
    @rating = rating
    @user = user
    @recipe = recipe
    @@all << self
  end
end
