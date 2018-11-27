class Allergen

  @@all = []

  attr_reader :user, :ingredient

  def initialize(ingredient, user)
    @ingredient = ingredient
    @user = user

    @@all << self
  end

  def self.all
    @@all
  end

end
