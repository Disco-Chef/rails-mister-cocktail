require 'json'
require 'open-uri'
require 'byebug'

# ingredients = Ingredient.create
url = "https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list"
data = JSON.parse(open(url).read)
data["drinks"].each do |drink|
  Ingredient.create!(name: drink["strIngredient1"])
end
