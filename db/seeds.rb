# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'json'
require 'open-uri'

url = 'https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'
ingredients_serialized = open(url).read
ingredients = JSON.parse(ingredients_serialized)

puts "Cleaning database"

Ingredient.destroy_all

puts "Creating ingredients..."

while (Ingredient.count < 10) do
    randomIngredient = ingredients["drinks"][rand(100)]["strIngredient1"]
    Ingredient.create(name: randomIngredient)
end

puts "Created #{Ingredient.count} ingredient(s)"

puts "Cleaning database"

Cocktail.destroy_all


puts "Creating cocktails..."

while (Cocktail.count < 10) do
    randomIngredient = ingredients["drinks"][rand(100)]["strIngredient1"]
    Cocktail.create(name: randomIngredient)
end

puts "Created #{Cocktail.count} ingredient(s)"