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
Review.destroy_all

Cocktail.destroy_all

Dose.destroy_all

Ingredient.destroy_all

puts "Creating ingredients..."

ingredients["drinks"].each do |ingredient|
    Ingredient.create(name: ingredient["strIngredient1"])
end

puts "Created #{Ingredient.count} ingredient(s)"

puts "Creating cocktails..."

file1 = URI.open('https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/kahlua-cold-brew-martini-1569962023.jpg?crop=0.502xw:1.00xh;0.277xw,0&resize=980:*')
cocktail3 = Cocktail.create!(name: "Cold Brew Martini")
cocktail3.photo.attach(io: file1, filename: 'file1', content_type: 'image/png')
#https://www.townandcountrymag.com/leisure/drinks/g3108/winter-cocktails/

file2 = URI.open('https://images.squarespace-cdn.com/content/v1/568bea5540667a54498bf784/1510145534421-NOJRCS609UATL7HIQ8P5/ke17ZwdGBToddI8pDm48kJ7__POZwihxtEhziEAJlYJ7gQa3H78H3Y0txjaiv_0fDoOvxcdMmMKkDsyUqMSsMWxHk725yiiHCCLfrh8O1z5QPOohDIaIeljMHgDF5CVlOqpeNLcJ80NK65_fV7S1Ufow0MSAm9jSXDt4kDII2NxqevN2anL_CgBhZPp9gzv_sgCgF34VRV8MtN345OkU5A/COCKTAIL_TEST_YELLOW-BLUE.jpg?format=1000w')
cocktail3 = Cocktail.create!(name: "Bronco-tini")
cocktail3.photo.attach(io: file2, filename: 'file2', content_type: 'image/png')
#https://rockymountaincooking.com/2014/01/bronco-tini/

file3 = URI.open('https://fast.clickbooq.com/b4c33d-986/150324WhiskeyCocktails10344FF-lg.jpg')
cocktail3 = Cocktail.create!(name: "Lemon mojito")
cocktail3.photo.attach(io: file3, filename: 'file3', content_type: 'image/png')
#https://www.taste.com.au/recipes/lemon-mojito/c33f7f13-eadb-448b-92b4-d41b70c6e733

file4 = URI.open('https://d33wubrfki0l68.cloudfront.net/faf06601d43e9895e34bf6d708379c75a78227e5/f2550/thumbs/drink/long-flint-negroni-cocktail-in-a-pop-art-style-3200x2133-q60.jpg')
cocktail4 = Cocktail.create!(name: "Negroni sbagliato")
cocktail4.photo.attach(io: file4, filename: 'file4', content_type: 'image/png')
#http://www.campari.com/es/our-cocktails%23negroni-sbagliato

file5 = URI.open('https://i.pinimg.com/originals/76/ba/04/76ba04684db9b26d5b1ff6316d347342.jpg')
cocktail5 = Cocktail.create!(name: "Orange Gin&Tonic")
cocktail5.photo.attach(io: file5, filename: 'file5', content_type: 'image/png')
#https://www.wine-liquor.store/gin-and-tonic-with-dried-orange-and-rosemary/

file6 = URI.open('https://i.pinimg.com/originals/60/fc/84/60fc845d20f60084585b9019bef98bac.jpg')
cocktail6 = Cocktail.create!(name: "Mango Sunrise")
cocktail6.photo.attach(io: file6, filename: 'file6', content_type: 'image/png')
#https://www.quericavida.com/recipes/mango-sunrise-margarita/5741791e-5713-4abe-a84e-1f646b5815bc

file7 = URI.open('https://e217ee5bcd3a52e63f53-b815795030fa426f049b29aca2f565ed.ssl.cf1.rackcdn.com/fooddrink.jpg')
cocktail7 = Cocktail.create!(name: "Old Fashioned")
cocktail7.photo.attach(io: file7, filename: 'file7', content_type: 'image/png')
#https://cooking.nytimes.com/recipes/1018343-old-fashioned

file8 = URI.open('https://c.stocksy.com/a/izbA00/z9/2529334.jpg')
cocktail8 = Cocktail.create!(name: "Whiskey Sour")
cocktail8.photo.attach(io: file8, filename: 'file8', content_type: 'image/png')
#https://www.culinaryhill.com/whiskey-sour-cocktail/

#file9 = URI.open('https://i.pinimg.com/originals/c0/cf/5c/c0cf5cf960191b8b8619ad996139942b.jpg')
#cocktail9 = Cocktail.create!(name: "Savîle Rumtini")
#cocktail9.photo.attach(io: file9, filename: 'file9', content_type: 'image/png')

file10 = URI.open('https://assets.punchdrink.com/wp-content/uploads/2019/09/04145824/Article-Lychee-Martini-90s-cocktail.jpg')
cocktail10 = Cocktail.create!(name: "Lychee Martini")
cocktail10.photo.attach(io: file10, filename: 'file10', content_type: 'image/png')
#https://www.foodnetwork.com/recipes/lychee-martini-recipe-1939454

file12 = URI.open('https://cdn.hourdetroit.com/wp-content/uploads/sites/20/2019/07/violet-eyes.jpg')
cocktail12 = Cocktail.create!(name: "Violet eyes")
cocktail12.photo.attach(io: file12, filename: 'file12', content_type: 'image/png')
# https://www.hourdetroit.com/restaurants-food/pinkys-rooftop-cocktail-recipe/

file13 = URI.open('https://i.pinimg.com/originals/9c/ec/cf/9ceccffcf363c999f956644ab40efae6.png')
cocktail13 = Cocktail.create!(name: "Pink flamingo")
cocktail13.photo.attach(io: file13, filename: 'file13', content_type: 'image/png')
#https://www.thespruceeats.com/uv-pink-flamingo-cocktail-761196

# file14 = URI.open('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQfbFCCpJNd24AAeQOWlqALDDKqBdOjMZVdiw&usqp=CAU')
# cocktail14 = Cocktail.create!(name: "Blue Lagoon")
# cocktail14.photo.attach(io: file14, filename: 'file14', content_type: 'image/png')

file15 = URI.open('https://images.squarespace-cdn.com/content/v1/57ca223ae6f2e1669706c2ed/1601298622001-SJCOJXFFTXD0QD39RJFM/ke17ZwdGBToddI8pDm48kI02I_04z7NidtXoqs_KwB97gQa3H78H3Y0txjaiv_0fDoOvxcdMmMKkDsyUqMSsMWxHk725yiiHCCLfrh8O1z5QHyNOqBUUEtDDsRWrJLTmi7D7yXkH8nfwsxTs5kW9h_SwVOxnimb__0u_N8uJDJ53X9_QaGwb3XCO2XXabC5A/taryn-sundae-studio-perth-food-photography-83.jpg')
cocktail15 = Cocktail.create!(name: "Matcha cocktail")
cocktail15.photo.attach(io: file15, filename: 'file15', content_type: 'image/png')
#https://www.absolutdrinks.com/en/drinks/matcha-cocktail/

file17 = URI.open('https://images.squarespace-cdn.com/content/v1/5b478d5e266c07ae6c7522b6/1549552902173-SHETE9B7VU64KNOB27Y9/ke17ZwdGBToddI8pDm48kNmwz4ZxpHElRG9D_GYMwrB7gQa3H78H3Y0txjaiv_0fDoOvxcdMmMKkDsyUqMSsMWxHk725yiiHCCLfrh8O1z5QHyNOqBUUEtDDsRWrJLTmbA40xHUQunj0vJznaJavl9mMTyKVHTLO7x6JuTMOzG2Xg30WRiMxj_d8NUwGDZ7B/Mister-Paradise-Food-and-Beverage-Photography-All-Good-NYC-16.jpg?format=1500w')
cocktail17 = Cocktail.create!(name: "Dark Moon")
cocktail17.photo.attach(io: file17, filename: 'file17', content_type: 'image/png')
#https://www.bonappetit.com/recipe/dark-moon

file18 = URI.open('https://cdn.shopify.com/s/files/1/1002/8980/articles/italianspritzsquare_1200x1500_crop_center.jpg?v=1525818885')
cocktail18 = Cocktail.create!(name: "Italian Spritz")
cocktail18.photo.attach(io: file18, filename: 'file18', content_type: 'image/png')
#https://wandpdesign.com/blogs/thekitchen/the-italian-spritz

file19 = URI.open('https://www.cointreau.com/us/en/sites/us/files/styles/gallery_image_small/public/cocktail-images/Cointreau-cocktail-Acceptance-Speech.jpg?itok=2OzDmuxI')
cocktail19 = Cocktail.create!(name: "Acceptance Speech")
cocktail19.photo.attach(io: file19, filename: 'file19', content_type: 'image/png')
# A glowing, celebratory spritz worthy of a gold envelope.
# Ingredientes
# 30.00ml / 1.00oz Cointreau
# 30.00ml / 1.00oz fresh grapefruit juice
# 90.00ml / 3.00oz elderflower tonic
# 60.00ml / 2.00oz prosecco
# 1 pinch edible gold leaf

# file20 = URI.open('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSqro6GjYCSVsDvk2GUvs9k3780pBk41Qw_Ug&usqp=CAU')
# cocktail20 = Cocktail.create!(name: "Sparkling Grapefruit Sangria")
# cocktail20.photo.attach(io: file20, filename: 'file20', content_type: 'image/png')


file21 = URI.open('http://paulineglaizal.com/wp-content/uploads/2018/06/P1.png')
cocktail1 = Cocktail.create!(name: "Chamomile Gin")
cocktail1.photo.attach(io: file21, filename: 'file21', content_type: 'image/png')
#https://www.bonappetit.com/recipe/chamomile-gin-cocktail

file24 = URI.open('http://paulineglaizal.com/wp-content/uploads/2018/06/A.png')
cocktail1 = Cocktail.create!(name: "Margarita")
cocktail1.photo.attach(io: file24, filename: 'file24', content_type: 'image/png')
#https://www.seriouseats.com/recipes/2015/04/classic-margarita-recipe-tequila-cocktail.html

file25 = URI.open('http://paulineglaizal.com/wp-content/uploads/2018/06/gff.png')
cocktail1 = Cocktail.create!(name: "Cucumber-Mint Gin Cocktail")
cocktail1.photo.attach(io: file25, filename: 'file25', content_type: 'image/png')
#https://www.popsugar.com/food/Cucumber-Mint-Gin-Cocktail-34793556

file26 = URI.open('http://paulineglaizal.com/wp-content/uploads/2018/06/B.png')
cocktail1 = Cocktail.create!(name: "Mimosa")
cocktail1.photo.attach(io: file26, filename: 'file26', content_type: 'image/png')
#https://www.inspiredtaste.net/19516/mimosa-recipe/

puts "Created #{Cocktail.count} cocktail(s)"