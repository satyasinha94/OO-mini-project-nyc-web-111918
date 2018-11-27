require_relative '../config/environment.rb'
        #(name)
satya = User.new("satya")
mike = User.new("mike")
bob = User.new("bob")

        #ingredients
ing1 = Ingredient.new("blueberries")
ing2 = Ingredient.new("crust")
ing3 = Ingredient.new("sugar")
#ing4

        #(recipe)
recipe1 = Recipe.new("blueberry pie")
recipe2 = Recipe.new("clam chowder")
ings = [ing1, ing2, ing3]

        #(ingredient, recipe)
ri1 = RecipeIngredient.new(ing1, recipe1)
#ri2 =
#ri3 =


      #(date, rating, user, recipe)
rc1 = RecipeCard.new("1994-11-06", 10, bob, recipe1)
rc2 = RecipeCard.new("2008-10-27", 8, satya, recipe2)
rc3 = RecipeCard.new("2012-09-15", 7, mike, recipe2)
#rc4
binding.pry
