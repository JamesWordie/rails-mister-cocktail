require "json"
require 'open-uri'

Ingredient.destroy_all if Rails.env.development?

url = "https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list"
parsed = JSON.parse(URI.open(url).read)
parsed.values.flatten.each do |ingred|
  Ingredient.create(name: ingred.values.first)
end



# Ingredient.create(name: "lemon")
# Ingredient.create(name: "ice")
# Ingredient.create(name: "mint leaves")
# Ingredient.create(name: "gin")
# Ingredient.create(name: "dry vermouth")
# Ingredient.create(name: "tequila")
# Ingredient.create(name: "lime")
# Ingredient.create(name: "creme de cacoa")
# Ingredient.create(name: "grenadine")
# Ingredient.create(name: "port")
# Ingredient.create(name: "sloe gin")
# Ingredient.create(name: "cointreau")

