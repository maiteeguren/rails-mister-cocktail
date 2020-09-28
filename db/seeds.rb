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
Cocktail.destroy_all

Dose.destroy_all

Ingredient.destroy_all

puts "Creating ingredients..."

ingredients["drinks"].each do |ingredient|
    Ingredient.create(name: ingredient["strIngredient1"])
end

puts "Created #{Ingredient.count} ingredient(s)"

puts "Creating cocktails..."

file1 = URI.open('https://images.unsplash.com/photo-1536935338788-846bb9981813?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60')
cocktail1 = Cocktail.create!(name: "Example")
cocktail1.photo.attach(io: file1, filename: 'file1', content_type: 'image/png')

file2 = URI.open('https://images.unsplash.com/photo-1546171753-97d7676e4602?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60')
cocktail2 = Cocktail.create!(name: "Example2")
cocktail2.photo.attach(io: file2, filename: 'file2', content_type: 'image/png')

file3 = URI.open('https://images.unsplash.com/photo-1556855810-ac404aa91e85?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60')
cocktail3 = Cocktail.create!(name: "Example3")
cocktail3.photo.attach(io: file3, filename: 'file3', content_type: 'image/png')

file4 = URI.open('https://images.unsplash.com/photo-1582837611539-e3020079eab6?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60')
cocktail4 = Cocktail.create!(name: "Example4")
cocktail4.photo.attach(io: file4, filename: 'file4', content_type: 'image/png')

file5 = URI.open('https://images.unsplash.com/photo-1554219962-f71d858fa121?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60')
cocktail5 = Cocktail.create!(name: "Example5")
cocktail5.photo.attach(io: file5, filename: 'file5', content_type: 'image/png')

file6 = URI.open('https://images.unsplash.com/photo-1570204865352-934c744d682c?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60')
cocktail6 = Cocktail.create!(name: "Example6")
cocktail6.photo.attach(io: file6, filename: 'file6', content_type: 'image/png')

file7 = URI.open('https://images.unsplash.com/photo-1547551137-f201b450e2fe?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60')
cocktail7 = Cocktail.create!(name: "Example7")
cocktail7.photo.attach(io: file7, filename: 'file7', content_type: 'image/png')

file8 = URI.open('https://images.unsplash.com/photo-1514362545857-3bc16c4c7d1b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60')
cocktail8 = Cocktail.create!(name: "Example8")
cocktail8.photo.attach(io: file8, filename: 'file8', content_type: 'image/png')

file9 = URI.open('https://images.unsplash.com/photo-1587223962930-cb7f31384c19?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60')
cocktail9 = Cocktail.create!(name: "Example9")
cocktail9.photo.attach(io: file9, filename: 'file9', content_type: 'image/png')

file10 = URI.open('https://images.unsplash.com/photo-1562708294-4df93280352d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60')
cocktail10 = Cocktail.create!(name: "Example10")
cocktail10.photo.attach(io: file10, filename: 'file10', content_type: 'image/png')

file11 = URI.open('https://images.unsplash.com/photo-1566284628402-3f0895b3eb28?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60')
cocktail11 = Cocktail.create!(name: "Example11")
cocktail11.photo.attach(io: file11, filename: 'file11', content_type: 'image/png')

file12 = URI.open('https://images.unsplash.com/photo-1586338211598-e2d64cf97e28?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60')
cocktail12 = Cocktail.create!(name: "Example12")
cocktail12.photo.attach(io: file12, filename: 'file12', content_type: 'image/png')

file13 = URI.open('https://images.unsplash.com/photo-1572590016064-3e6ae9c04947?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60')
cocktail13 = Cocktail.create!(name: "Example13")
cocktail13.photo.attach(io: file13, filename: 'file13', content_type: 'image/png')

file14 = URI.open('https://images.unsplash.com/photo-1587888637140-849b25d80ef9?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60')
cocktail14 = Cocktail.create!(name: "Example14")
cocktail14.photo.attach(io: file14, filename: 'file14', content_type: 'image/png')

file15 = URI.open('https://images.unsplash.com/photo-1583898350903-99fa829dad3d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60')
cocktail15 = Cocktail.create!(name: "Example15")
cocktail15.photo.attach(io: file15, filename: 'file15', content_type: 'image/png')

file16 = URI.open('https://images.unsplash.com/photo-1575023782549-62ca0d244b39?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60')
cocktail16 = Cocktail.create!(name: "Example16")
cocktail16.photo.attach(io: file16, filename: 'file16', content_type: 'image/png')

file17 = URI.open('https://images.unsplash.com/photo-1555766720-1e727844cc8f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60')
cocktail17 = Cocktail.create!(name: "Example17")
cocktail17.photo.attach(io: file17, filename: 'file17', content_type: 'image/png')

file18 = URI.open('https://images.unsplash.com/photo-1578664182178-7079cc6dd953?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60')
cocktail18 = Cocktail.create!(name: "Example18")
cocktail18.photo.attach(io: file18, filename: 'file18', content_type: 'image/png')

file19 = URI.open('https://images.unsplash.com/photo-1562707904-8280ad4e2bb0?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60')
cocktail19 = Cocktail.create!(name: "Example19")
cocktail19.photo.attach(io: file19, filename: 'file19', content_type: 'image/png')

file20 = URI.open('https://images.unsplash.com/photo-1514361892635-6b07e31e75f9?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60')
cocktail20 = Cocktail.create!(name: "Example20")
cocktail20.photo.attach(io: file20, filename: 'file20', content_type: 'image/png')


puts "Created #{Cocktail.count} cocktail(s)"