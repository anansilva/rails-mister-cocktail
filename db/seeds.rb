require 'open-uri'
require 'json'

result = JSON.parse(open("http://www.thecocktaildb.com/api/json/v1/1/list.php?i=list").read)

result["drinks"].each do |ingredient|
  Ingredient.create(name: ingredient["strIngredient1"])
end
