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

file9 = URI.open('https://i.guim.co.uk/img/media/43bea28160ef11e3f14a087b2b44ed682e73442f/0_374_5760_3456/master/5760.jpg?width=1200&height=900&quality=85&auto=format&fit=crop&s=884e98419ee7380321144c1051706b49')
cocktail9 = Cocktail.create!(name: "Rosé Spritz")
cocktail9.photo.attach(io: file9, filename: 'file9', content_type: 'image/png')
#https://www.saltandlavender.com/easy-rose-spritzer-recipe/

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

file14 = URI.open('https://dspncdn.com/a1/media/692x/6d/68/1b/6d681b50f698c5cb236651419bec9ecd.jpg')
cocktail14 = Cocktail.create!(name: "Pomegranate Gin")
cocktail14.photo.attach(io: file14, filename: 'file14', content_type: 'image/png')
#https://www.yuppiechef.com/spatula/delicious-pomegranate-gin-cocktail/

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

file20 = URI.open('https://www.acouplecooks.com/wp-content/uploads/2020/04/Tequila-Sunrise-003s.jpg')
cocktail20 = Cocktail.create!(name: "Tequila Sunrise")
cocktail20.photo.attach(io: file20, filename: 'file20', content_type: 'image/png')
# Here's how to make a tequila sunrise! This vibrant cocktail layers the colors of a summer sunrise ...
# Ingredientes
# 2 ounces (4 tablespoons) tequila
# 4 ounces (1/2 cup) orange juice
# 3/4 ounce (1 1/2 tablespoons) grenadine syrup (purchased or homemade)
# Ice (try our clear ice!)
# For the garnish: Cocktail cherry, orange juice


file21 = URI.open('http://paulineglaizal.com/wp-content/uploads/2018/06/P1.png')
cocktail1 = Cocktail.create!(name: "Chamomile Gin")
cocktail1.photo.attach(io: file21, filename: 'file21', content_type: 'image/png')
#https://www.bonappetit.com/recipe/chamomile-gin-cocktail

file22 = URI.open('https://dspncdn.com/a1/media/692x/51/8f/c5/518fc5c0864157a7469173089198ac68.jpg')
cocktail1 = Cocktail.create!(name: "Elderflower Gin")
cocktail1.photo.attach(io: file22, filename: 'file22', content_type: 'image/png')
#https://kitchenswagger.com/bohemian-cocktail-with-elderflower-foam-recipe/

file23 = URI.open('https://i.pinimg.com/564x/8f/65/26/8f65262a875e72d77d88b3f4bad3eb3a.jpg')
cocktail1 = Cocktail.create!(name: "Screwdriver")
cocktail1.photo.attach(io: file23, filename: 'file23', content_type: 'image/png')
#https://www.inspiredtaste.net/8079/screwdriver-recipe/

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

file26 = URI.open('http://www.jackspiceradams.com/wp-content/uploads/2019/03/IMG_5732.jpg')
cocktail1 = Cocktail.create!(name: "Pear Collins")
cocktail1.photo.attach(io: file26, filename: 'file26', content_type: 'image/png')
#https://livelytable.com/pear-collins-cocktail/

file27 = URI.open('https://i.pinimg.com/564x/18/ca/dc/18cadc0c7b455ab153a82667bcdc49ab.jpg')
cocktail1 = Cocktail.create!(name: "Campari Spritz")
cocktail1.photo.attach(io: file27, filename: 'file27', content_type: 'image/png')
# https://www.seriouseats.com/recipes/2011/06/campari-spritz-recipe.html

file28 = URI.open('https://i.pinimg.com/564x/b9/0b/06/b90b06b97ccd4893a6ddcaf5b980d6eb.jpg')
cocktail1 = Cocktail.create!(name: "Apple Verjus Spritz")
cocktail1.photo.attach(io: file28, filename: 'file28', content_type: 'image/png')
# 4 ingredientes
# Frutas y verduras
# 1 handful Apple and blood orange, Slices
# 1/2 oz Simple syrup
# 2 oz Soda
# 3 oz Verjus

file26 = URI.open('https://blog.toryburch.com/wp-content/uploads/2017/11/Cherry-Bombe-Cocktails_960_slide2.jpg')
cocktail1 = Cocktail.create!(name: "Charred Pineapple Margarita")
cocktail1.photo.attach(io: file26, filename: 'file26', content_type: 'image/png')
#https://www.toryburch.com/blog-post/blog-post.html?bpid=367944


puts "Created #{Cocktail.count} cocktail(s)"

# more cocktailes
# https://i.pinimg.com/564x/94/6f/98/946f98edf90f6b47e0fb16790617519a.jpg
#https://i.pinimg.com/564x/30/38/53/3038535da65d9c6f67897a29ada5ff32.jpg
#https://i.pinimg.com/564x/d3/cd/90/d3cd903afa5a56368e7c931b9a2fe5c5.jpg
#https://i.pinimg.com/564x/9c/78/cb/9c78cbd16c3e7dc33b99054551c311fb.jpg