# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
require 'json'
require 'open-uri'

puts "Cleaning database"

Review.destroy_all

Cocktail.destroy_all

Dose.destroy_all

Measure.destroy_all

User.destroy_all

puts "Creating units of measurement..."

oz = Measure.create(unit:"oz")
ml = Measure.create(unit:"ml")
unit = Measure.create(unit:"unit(s)")
cup = Measure.create(unit:"cup(s)")
tablespoon = Measure.create(unit:"tablespoon(s)")
teaspoon = Measure.create(unit:"teaspoon(s)")
bit = Measure.create(unit:"bit")
slice = Measure.create(unit:"slice(s)")
splash = Measure.create(unit:"splash")
pinch = Measure.create(unit:"pinch")
spring = Measure.create(unit:"spring(s)")
part = Measure.create(unit:"part(s)")

units = %w(lb mg g kg dl cl l cc handful)

units.each do |u|
    Measure.create(unit: u)
end

puts "Created #{Measure.count} unit(s)"

puts "Creating users..."

user = User.create!(email:"user@user.com", password:"password")

20.times do
    User.create(
        name: Faker::Name.first_name,
        email: Faker::Internet.email,
        password: "password"
    )
end

puts "Created #{User.count} user(s)"

puts "Creating cocktails..."

file1 = URI.open('https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/kahlua-cold-brew-martini-1569962023.jpg?crop=0.502xw:1.00xh;0.277xw,0&resize=980:*')
cocktail1 = Cocktail.new(name: "Cold Brew Martini", user: user)
cocktail1.photo.attach(io: file1, filename: 'file1', content_type: 'image/png')
Dose.create!(amount:"1", measure: oz, ingredient:"vodka", cocktail: cocktail1)
Dose.create!(amount:"2", measure: oz, ingredient:"Kahlúa", cocktail: cocktail1)
Dose.create!(amount:"3", measure: oz, ingredient:"cold brew", cocktail: cocktail1)
cocktail1.instructions = "Fill shaker with ice. Add all ingredients and shake hard for at least 10 seconds to create a nice foam. Strain into a cocktail glass to get rid of all of the small ice chips. Garnish with coffee beans."
cocktail1.save!
#https://www.townandcountrymag.com/leisure/drinks/g3108/winter-cocktails/

puts "Cocktail1 created"

file2 = URI.open('https://images.squarespace-cdn.com/content/v1/568bea5540667a54498bf784/1510145534421-NOJRCS609UATL7HIQ8P5/ke17ZwdGBToddI8pDm48kJ7__POZwihxtEhziEAJlYJ7gQa3H78H3Y0txjaiv_0fDoOvxcdMmMKkDsyUqMSsMWxHk725yiiHCCLfrh8O1z5QPOohDIaIeljMHgDF5CVlOqpeNLcJ80NK65_fV7S1Ufow0MSAm9jSXDt4kDII2NxqevN2anL_CgBhZPp9gzv_sgCgF34VRV8MtN345OkU5A/COCKTAIL_TEST_YELLOW-BLUE.jpg?format=1000w')
cocktail2 = Cocktail.new(name: "Bronco-tini", user: user)
cocktail2.photo.attach(io: file2, filename: 'file2', content_type: 'image/png')
Dose.create!(amount:"0.5", measure: cup, ingredient:"orange juice", cocktail: cocktail2)
Dose.create!(amount:"1", measure: oz, ingredient:"Orange flavored vodka", cocktail: cocktail2)
Dose.create!(amount:"1", measure: oz, ingredient:"Coconut flavored vodka", cocktail: cocktail2)
Dose.create!(amount:"1", measure: teaspoon, ingredient:"blue colored turbinato sugar", cocktail: cocktail2)
cocktail2.instructions = "In a martini glass or any other glass you like. Moisten the rim with orange juice, and dip in sugar to make a nice rim around the glass. Fill a cocktail shaker with ice and add orange juice and both vodka’s. Shake well. Pour dink into rimmed glass, making sure a little sugar gets in the drink.

Making colored sugar is easy! Mix turbinado natural cane sugar with a few drops of blue food coloring until well incorporated."
cocktail2.save!
#https://rockymountaincooking.com/2014/01/bronco-tini/
puts "Cocktail2 created"


file3 = URI.open('https://fast.clickbooq.com/b4c33d-986/150324WhiskeyCocktails10344FF-lg.jpg')
cocktail3 = Cocktail.new(name: "Skinny lemon mojito", user: user)
cocktail3.photo.attach(io: file3, filename: 'file3', content_type: 'image/png')
Dose.create!(amount:"1.5", measure: unit, ingredient:"lemon", cocktail: cocktail3)
Dose.create!(amount:"1.5", measure: tablespoon, ingredient:"sugar", cocktail: cocktail3)
Dose.create!(amount:"8", measure: unit, ingredient:"mint leaves", cocktail: cocktail3)
Dose.create!(amount:"1.5", measure: oz, ingredient:"light rum or vodka", cocktail: cocktail3)
Dose.create!(amount:"0.5", measure: cup, ingredient:"ice", cocktail: cocktail3)
Dose.create!(amount:"4", measure: oz, ingredient:"tonic water", cocktail: cocktail3)
cocktail3.instructions = "Quarter 1/2 lemon, then juice the whole other lemon. Muddle the quartered lemon, mint, and sugar in a highball glass. Add juice of 1 lemon, rum, ice, and top with tonic water. Stir, garnish, and enjoy!"
cocktail3.save!
#https://seekinggoodeats.com/lemon-mojito/
puts "Cocktail3 created"


file4 = URI.open('https://d33wubrfki0l68.cloudfront.net/faf06601d43e9895e34bf6d708379c75a78227e5/f2550/thumbs/drink/long-flint-negroni-cocktail-in-a-pop-art-style-3200x2133-q60.jpg')
cocktail4 = Cocktail.new(name: "Negroni sbagliato", user: user)
cocktail4.photo.attach(io: file4, filename: 'file4', content_type: 'image/png')
Dose.create!(amount:"1.5", measure: oz, ingredient:"sweet vermouth", cocktail: cocktail4)
Dose.create!(amount:"1.5", measure: oz, ingredient:"Campari", cocktail: cocktail4)
Dose.create!(amount:"1.5", measure: oz, ingredient:"Prosecco", cocktail: cocktail4)
cocktail4.instructions = "Fill a glass with ice. Add vermouth and Campari and stir. Top with Prosecco and stir again. Garnish with an orange slice."
cocktail4.save!
#http://www.campari.com/es/our-cocktails%23negroni-sbagliato
puts "Cocktail4 created"


file5 = URI.open('https://i.pinimg.com/originals/76/ba/04/76ba04684db9b26d5b1ff6316d347342.jpg')
cocktail5 = Cocktail.new(name: "Orange Gin&Tonic", user: user)
cocktail5.photo.attach(io: file5, filename: 'file5', content_type: 'image/png')
Dose.create!(amount:"30", measure: ml, ingredient:"dry gin", cocktail: cocktail5)
Dose.create!(amount:"100", measure: ml, ingredient:"tonic water", cocktail: cocktail5)
Dose.create!(amount:"1", measure: unit, ingredient:"orange twist", cocktail: cocktail5)
cocktail5.instructions = "Put the gin in the glass and fill it with ice to the brim. Top up with tonic water and the orange twist."
cocktail5.save!
#https://www.wine-liquor.store/gin-and-tonic-with-dried-orange-and-rosemary/
puts "Cocktail5 created"


file6 = URI.open('https://i.pinimg.com/originals/60/fc/84/60fc845d20f60084585b9019bef98bac.jpg')
cocktail6 = Cocktail.new(name: "Mango Sunrise Margarita", user: user)
cocktail6.photo.attach(io: file6, filename: 'file6', content_type: 'image/png')
Dose.create!(amount:"1", measure: unit, ingredient:"halved lemon", cocktail: cocktail6)
Dose.create!(amount:"1", measure: bit, ingredient:"table salt", cocktail: cocktail6)
Dose.create!(amount:"1", measure: oz, ingredient:"tequila", cocktail: cocktail6)
Dose.create!(amount:"0.5", measure: cup, ingredient:"mango juice", cocktail: cocktail6)
Dose.create!(amount:"1", measure: oz, ingredient:"grenadine syrup", cocktail: cocktail6)
Dose.create!(amount:"1", measure: oz, ingredient:"lemon juice", cocktail: cocktail6)
cocktail6.instructions = "Moisten the rim of a glass with a lemon wedge; then dip in salt. Fill the glass with ice. Pour the tequila, lemon juice and mango juice. Mix with a spoon or straw until well blended. Pour the grenadine syrup and let it settle at the bottom of the glass. Garnish with a lemon wedge and enjoy. Salud!"
cocktail6.save!
#https://www.quericavida.com/recipes/mango-sunrise-margarita/5741791e-5713-4abe-a84e-1f646b5815bc
puts "Cocktail6 created"


file7 = URI.open('https://e217ee5bcd3a52e63f53-b815795030fa426f049b29aca2f565ed.ssl.cf1.rackcdn.com/fooddrink.jpg')
cocktail7 = Cocktail.new(name: "Old Fashioned", user: user)
cocktail7.photo.attach(io: file7, filename: 'file7', content_type: 'image/png')
Dose.create!(amount:"1", measure: unit, ingredient:"sugar cube", cocktail: cocktail7)
Dose.create!(amount:"1", measure: bit, ingredient:"Angostura bitter", cocktail: cocktail7)
Dose.create!(amount:"2", measure: oz, ingredient:"rye or bourbon", cocktail: cocktail7)
Dose.create!(amount:"1", measure: unit, ingredient:"orange twist", cocktail: cocktail7)
cocktail7.instructions = "Muddle the sugar cube and bitters with one bar spoon of water at the bottom of a chilled rocks glass. (If using simple syrup, combine bitters and one bar spoon of syrup.) Add rye or bourbon. Stir. Add one large ice cube, or three or four smaller cubes. Stir until chilled and properly diluted, about 30 seconds. Slip orange twist on the side of the cube."
cocktail7.save!
#https://cooking.nytimes.com/recipes/1018343-old-fashioned
puts "Cocktail7 created"

file8 = URI.open('https://c.stocksy.com/a/izbA00/z9/2529334.jpg')
cocktail8 = Cocktail.new(name: "Whiskey Sour", user: user)
cocktail8.photo.attach(io: file8, filename: 'file8', content_type: 'image/png')
Dose.create!(amount:"2", measure: oz, ingredient:"whiskey", cocktail: cocktail8)
Dose.create!(amount:"1", measure: oz, ingredient:"simple syrup", cocktail: cocktail8)
Dose.create!(amount:"1", measure: tablespoon, ingredient:"lemon juice", cocktail: cocktail8)
Dose.create!(amount:"1", measure: tablespoon, ingredient:"lime juice", cocktail: cocktail8)
Dose.create!(amount:"1", measure: unit, ingredient:"maraschino cherry", cocktail: cocktail8)
cocktail8.instructions = "In a martini shaker filled with ice, add whiskey, simple syrup, lemon juice, and lime juice. Cover and shake until chilled, about 30 seconds. Strain into a rocks glass filled with ice. Garnish with cherry."
cocktail8.save!
#https://www.culinaryhill.com/whiskey-sour-cocktail/
puts "Cocktail8 created"


file9 = URI.open('https://i.guim.co.uk/img/media/43bea28160ef11e3f14a087b2b44ed682e73442f/0_374_5760_3456/master/5760.jpg?width=1200&height=900&quality=85&auto=format&fit=crop&s=884e98419ee7380321144c1051706b49')
cocktail9 = Cocktail.new(name: "Rosé Spritz", user: user)
cocktail9.photo.attach(io: file9, filename: 'file9', content_type: 'image/png')
Dose.create!(amount:"1", measure: slice, ingredient:"orange", cocktail: cocktail9)
Dose.create!(amount:"3", measure: oz, ingredient:"Rosé wine", cocktail: cocktail9)
Dose.create!(amount:"3", measure: oz, ingredient:"lemon soda", cocktail: cocktail9)
cocktail9.instructions = "Fill the glass with ice. Fill half way with rose wine, and top with sprite. Mix gently and add the orange slice."
cocktail9.save!
#https://www.saltandlavender.com/easy-rose-spritzer-recipe/
puts "Cocktail9 created"


file10 = URI.open('https://assets.punchdrink.com/wp-content/uploads/2019/09/04145824/Article-Lychee-Martini-90s-cocktail.jpg')
cocktail10 = Cocktail.new(name: "Lychee Martini", user: user)
cocktail10.photo.attach(io: file10, filename: 'file10', content_type: 'image/png')
Dose.create!(amount:"6", measure: oz, ingredient:"vodka", cocktail: cocktail10)
Dose.create!(amount:"4", measure: oz, ingredient:"lychee juice", cocktail: cocktail10)
Dose.create!(amount:"2", measure: unit, ingredient:"lychees", cocktail: cocktail10)
Dose.create!(amount:"1", measure: splash, ingredient:"Vermouth", cocktail: cocktail10)
cocktail10.instructions = "In a cocktail shaker filled with ice add vodka, lychee juice and vermouth. Shake until chilled. Pour into 2 martini glasses and garnish with lychees."
cocktail10.save!
#https://www.foodnetwork.com/recipes/lychee-martini-recipe-1939454
puts "Cocktail10 created"


file12 = URI.open('https://cdn.hourdetroit.com/wp-content/uploads/sites/20/2019/07/violet-eyes.jpg')
cocktail12 = Cocktail.new(name: "Violet eyes", user: user)
cocktail12.photo.attach(io: file12, filename: 'file12', content_type: 'image/png')
Dose.create!(amount:"1.5", measure: oz, ingredient:"Valentine’s White", cocktail: cocktail12)
Dose.create!(amount:"0.5", measure: oz, ingredient:"creme Yvette", cocktail: cocktail12)
Dose.create!(amount:"1", measure: splash, ingredient:"Blossom vodka", cocktail: cocktail12)
Dose.create!(amount:"5", measure: unit, ingredient:"raspberries, muddled", cocktail: cocktail12)
Dose.create!(amount:"1", measure: bit, ingredient:"lavender, muddled", cocktail: cocktail12)
Dose.create!(amount:"0.5", measure: oz, ingredient:"lemon juice", cocktail: cocktail12)
Dose.create!(amount:"0.5", measure: oz, ingredient:"simple syrup", cocktail: cocktail12)
cocktail12.instructions = "Add all ingredients to a shaker and shake vigorously until well combined. Fine strain the drink into a coupe glass and enjoy."
cocktail12.save!
# https://www.hourdetroit.com/restaurants-food/pinkys-rooftop-cocktail-recipe/
puts "Cocktail12 created"


file13 = URI.open('https://i.pinimg.com/originals/9c/ec/cf/9ceccffcf363c999f956644ab40efae6.png')
cocktail13 = Cocktail.new(name: "Pink flamingo", user: user)
cocktail13.photo.attach(io: file13, filename: 'file13', content_type: 'image/png')
Dose.create!(amount:"2", measure: oz, ingredient:"lemonadde vodka", cocktail: cocktail13)
Dose.create!(amount:"1", measure: oz, ingredient:"craberry juice", cocktail: cocktail13)
Dose.create!(amount:"1", measure: splash, ingredient:"triple sec", cocktail: cocktail13)
cocktail13.instructions = "Gather the ingredients. In a cocktail shaker filled with ice, pour all of the ingredients. Shake well. Strain into a chilled cocktail glass. Serve and enjoy!"
cocktail13.save!
#https://www.thespruceeats.com/uv-pink-flamingo-cocktail-761196
puts "Cocktail13 created"


file14 = URI.open('https://dspncdn.com/a1/media/692x/6d/68/1b/6d681b50f698c5cb236651419bec9ecd.jpg')
cocktail14 = Cocktail.new(name: "Pomegranate Gin", user: user)
cocktail14.photo.attach(io: file14, filename: 'file14', content_type: 'image/png')
Dose.create!(amount:"2", measure: oz, ingredient:"tonic water", cocktail: cocktail14)
Dose.create!(amount:"4", measure: oz, ingredient:"ice cubes", cocktail: cocktail14)
Dose.create!(amount:"2", measure: oz, ingredient:"pomegranate juice", cocktail: cocktail14)
Dose.create!(amount:"1", measure: oz, ingredient:"lime juice", cocktail: cocktail14)
Dose.create!(amount:"2", measure: tablespoon, ingredient:"pomegranate arils", cocktail: cocktail14)
cocktail14.instructions = "Fill a glass with a few pomegranate arils and ice. Pour the gin over the ice, then the tonic. Stir in the pomegranate and lime juice and wedges. Stir a few times to combine. Serve immediately with pomegranate arils sprinkled on top."
cocktail14.save!
#https://www.yuppiechef.com/spatula/delicious-pomegranate-gin-cocktail/
puts "Cocktail14 created"


file15 = URI.open('https://images.squarespace-cdn.com/content/v1/57ca223ae6f2e1669706c2ed/1601298622001-SJCOJXFFTXD0QD39RJFM/ke17ZwdGBToddI8pDm48kI02I_04z7NidtXoqs_KwB97gQa3H78H3Y0txjaiv_0fDoOvxcdMmMKkDsyUqMSsMWxHk725yiiHCCLfrh8O1z5QHyNOqBUUEtDDsRWrJLTmi7D7yXkH8nfwsxTs5kW9h_SwVOxnimb__0u_N8uJDJ53X9_QaGwb3XCO2XXabC5A/taryn-sundae-studio-perth-food-photography-83.jpg')
cocktail15 = Cocktail.new(name: "Matcha cocktail", user: user)
cocktail15.photo.attach(io: file15, filename: 'file15', content_type: 'image/png')
Dose.create!(amount:"2", measure: oz, ingredient:"whiskey", cocktail: cocktail15)
Dose.create!(amount:"3", measure: oz, ingredient:"coconut water", cocktail: cocktail15)
Dose.create!(amount:"0.5", measure: oz, ingredient:"rich cane sugar syrup", cocktail: cocktail15)
Dose.create!(amount:"0.25", measure: tablespoon, ingredient:"Matcha tea", cocktail: cocktail15)
Dose.create!(amount:"1", measure: slice, ingredient:"orange", cocktail: cocktail15)
cocktail15.instructions = "Combine all ingredients into a mixing tin (add tea last) and shake vigorously without ice to thoroughly incorporate the matcha into the liquids. Fill glass with ice, then dump ice into mixing tin. Shake very briefly, but vigorously to just chill ingredients. Pour liquid and ice from mixing tin into the glass, and decorate with the orange slice."
cocktail15.save!
#https://www.absolutdrinks.com/en/drinks/matcha-cocktail/
puts "Cocktail15 created"


file16 = URI.open('http://www.jackspiceradams.com/wp-content/uploads/2019/03/IMG_5732.jpg')
cocktail16 = Cocktail.new(name: "Maple on the Dock of the Rea", user: user)
cocktail16.photo.attach(io: file16, filename: 'file16', content_type: 'image/png')
Dose.create!(amount:"12.5", measure: ml, ingredient:"maple syrup", cocktail: cocktail16)
Dose.create!(amount:"25", measure: ml, ingredient:"lemon juice", cocktail: cocktail16)
Dose.create!(amount:"35", measure: ml, ingredient:"gin", cocktail: cocktail16)
Dose.create!(amount:"1", measure: splash, ingredient:"sparking pear soda", cocktail: cocktail16)
Dose.create!(amount:"1", measure: slice, ingredient:"pear", cocktail: cocktail16)
cocktail16.instructions = "Add all ingredients to a Collins glass and stir. Top with a few ice cubes. Garnish with a pear slice"
cocktail16.save!
#https://www.maplefromcanada.co.uk/recipes/maple-on-the-dock-of-the-rea/
puts "Cocktail16 created"


file17 = URI.open('https://images.squarespace-cdn.com/content/v1/5b478d5e266c07ae6c7522b6/1549552902173-SHETE9B7VU64KNOB27Y9/ke17ZwdGBToddI8pDm48kNmwz4ZxpHElRG9D_GYMwrB7gQa3H78H3Y0txjaiv_0fDoOvxcdMmMKkDsyUqMSsMWxHk725yiiHCCLfrh8O1z5QHyNOqBUUEtDDsRWrJLTmbA40xHUQunj0vJznaJavl9mMTyKVHTLO7x6JuTMOzG2Xg30WRiMxj_d8NUwGDZ7B/Mister-Paradise-Food-and-Beverage-Photography-All-Good-NYC-16.jpg?format=1500w')
cocktail17 = Cocktail.new(name: "Negroni", user: user)
cocktail17.photo.attach(io: file17, filename: 'file17', content_type: 'image/png')
Dose.create!(amount:"1", measure: oz, ingredient:"gin", cocktail: cocktail17)
Dose.create!(amount:"1", measure: oz, ingredient:"Campari", cocktail: cocktail17)
Dose.create!(amount:"1", measure: oz, ingredient:"sweet Vermouth", cocktail: cocktail17)
Dose.create!(amount:"1", measure: unit, ingredient:"orange twist", cocktail: cocktail17)
cocktail17.instructions = "Add the gin, Campari and sweet vermouth to a mixing glass filled with ice, and stir until well-chilled. Strain into a rocks glass filled with large ice cubes. Garnish with an orange peel."
cocktail17.save!
#https://www.liquor.com/recipes/negroni/
puts "Cocktail17 created"


file18 = URI.open('https://cdn.shopify.com/s/files/1/1002/8980/articles/italianspritzsquare_1200x1500_crop_center.jpg?v=1525818885')
cocktail18 = Cocktail.new(name: "Italian Spritz", user: user)
cocktail18.photo.attach(io: file18, filename: 'file18', content_type: 'image/png')
Dose.create!(amount:"1.5", measure: oz, ingredient:"Aperol", cocktail: cocktail18)
Dose.create!(amount:"0.5", measure: unit, ingredient:"blood orange (for juice)", cocktail: cocktail18)
Dose.create!(amount:"1", measure: oz, ingredient:"simple syrup", cocktail: cocktail18)
Dose.create!(amount:"1", measure: bit, ingredient:"Prosecco", cocktail: cocktail18)
Dose.create!(amount:"1", measure: splash, ingredient:"Sparkling water", cocktail: cocktail18)
Dose.create!(amount:"1", measure: slice, ingredient:"blood orange", cocktail: cocktail18)
cocktail18.instructions = "Fill an 8-ounce halfway with crushed ice. Pour Aperol over ice. Add the blood orange juice and simple syrup. Fill the glass almost full with Prosecco. Top it off with the sparkling soda water. Garnish with slices of blood orange."
cocktail18.save!
puts "Cocktail18 created"


file19 = URI.open('https://www.cointreau.com/us/en/sites/us/files/styles/gallery_image_small/public/cocktail-images/Cointreau-cocktail-Acceptance-Speech.jpg?itok=2OzDmuxI')
cocktail19 = Cocktail.new(name: "Acceptance Speech", user: user)
cocktail19.photo.attach(io: file19, filename: 'file19', content_type: 'image/png')
Dose.create!(amount:"30", measure: ml, ingredient:"Cointreau", cocktail: cocktail19)
Dose.create!(amount:"30", measure: ml, ingredient:"grapefruit juice", cocktail: cocktail19)
Dose.create!(amount:"90", measure: ml, ingredient:"elderflower tonic", cocktail: cocktail19)
Dose.create!(amount:"60", measure: ml, ingredient:"prosecco", cocktail: cocktail19)
Dose.create!(amount:"1", measure: pinch, ingredient:"edible gold leaf", cocktail: cocktail19)
cocktail19.instructions = "Build in glass over ice and stir to combine. Garnish with the gold leaf, grapefruit or orange peel."
cocktail19.save!
#https://www.cointreau.com/au/en/cocktails/acceptance-speech
puts "Cocktail19 created"


file20 = URI.open('https://www.acouplecooks.com/wp-content/uploads/2020/04/Tequila-Sunrise-003s.jpg')
cocktail20 = Cocktail.new(name: "Tequila Sunrise", user: user)
cocktail20.photo.attach(io: file20, filename: 'file20', content_type: 'image/png')
Dose.create!(amount:"2", measure: oz, ingredient:"tequila", cocktail: cocktail20)
Dose.create!(amount:"4", measure: oz, ingredient:"orange juice", cocktail: cocktail20)
Dose.create!(amount:"0.5", measure: oz, ingredient:"grenadine", cocktail: cocktail20)
Dose.create!(amount:"1", measure: slice, ingredient:"orange", cocktail: cocktail20)
Dose.create!(amount:"1", measure: unit, ingredient:"maraschino cherry", cocktail: cocktail20)
cocktail20.instructions = "In a glass filled with ice cubes, pour the tequila and orange juice, and stir well. Slowly pour the grenadine around the inside edge of the glass. It will sink and gradually rise to mix with the other ingredients. Garnish with an orange slice and cherry. Serve and enjoy."
cocktail20.save!
# https://www.thespruceeats.com/tequila-sunrise-recipe-760754
puts "Cocktail20 created"


file21 = URI.open('http://paulineglaizal.com/wp-content/uploads/2018/06/P1.png')
cocktail21 = Cocktail.new(name: "Chamomile Gin", user: user)
cocktail21.photo.attach(io: file21, filename: 'file21', content_type: 'image/png')
Dose.create!(amount:"2", measure: oz, ingredient:"strong chamomile tea", cocktail: cocktail21)
Dose.create!(amount:"0.5", measure: oz, ingredient:"honey", cocktail: cocktail21)
Dose.create!(amount:"1.5", measure: oz, ingredient:"gin", cocktail: cocktail21)
cocktail21.instructions = "Add gin, tea and honey simple syrup to a cocktail shaker and fill 2/3 full with ice. Shake until well chilled, about 20 seconds. Strain into coupe glass and serve. Optional: add a splash of lime juice."
cocktail21.save!
#https://www.bonappetit.com/recipe/chamomile-gin-cocktail
puts "Cocktail21 created"


file22 = URI.open('https://dspncdn.com/a1/media/692x/51/8f/c5/518fc5c0864157a7469173089198ac68.jpg')
cocktail22 = Cocktail.new(name: "Elderflower Gin", user: user)
cocktail22.photo.attach(io: file22, filename: 'file22', content_type: 'image/png')
Dose.create!(amount:"1", measure: unit, ingredient:"egg white", cocktail: cocktail22)
Dose.create!(amount:"1.5", measure: oz, ingredient:"gin", cocktail: cocktail22)
Dose.create!(amount:"1.5", measure: oz, ingredient:"elderflower liqueur", cocktail: cocktail22)
Dose.create!(amount:"0.75", measure: oz, ingredient:"grapefruit juice", cocktail: cocktail22)
Dose.create!(amount:"1", measure: splash, ingredient:"peychaud’s bitters", cocktail: cocktail22)
cocktail22.instructions = "For the elderflower foam, combine egg white and 0.5oz elderflower liqueur in a cocktail shaker and dry shake vigorously (with no ice), for 30 seconds until egg whites are foamy. For the cocktail, combine ingredients in a cocktail shaker with a cup of ice. Shake vigorously for 10 seconds and strain into a chilled martini glass. Top cocktail with egg white foam and serve."
cocktail22.save!
#https://kitchenswagger.com/bohemian-cocktail-with-elderflower-foam-recipe/
puts "Cocktail22 created"


file23 = URI.open('https://i.pinimg.com/564x/8f/65/26/8f65262a875e72d77d88b3f4bad3eb3a.jpg')
cocktail23 = Cocktail.new(name: "Screwdriver", user: user)
cocktail23.photo.attach(io: file23, filename: 'file23', content_type: 'image/png')
Dose.create!(amount:"60", measure: ml, ingredient:"vodka", cocktail: cocktail23)
Dose.create!(amount:"90", measure: ml, ingredient:"orange juice", cocktail: cocktail23)
Dose.create!(amount:"2", measure: slice, ingredient:"orange", cocktail: cocktail23)
cocktail23.instructions = "Add vodka and orange juice to a pitcher and stir. Pour over ice. Stir well then place a few orange wedges into the middle of the glass."
cocktail23.save!
#https://www.inspiredtaste.net/8079/screwdriver-recipe/
puts "Cocktail23 created"


file24 = URI.open('http://paulineglaizal.com/wp-content/uploads/2018/06/A.png')
cocktail24 = Cocktail.new(name: "Margarita", user: user)
cocktail24.photo.attach(io: file24, filename: 'file24', content_type: 'image/png')
Dose.create!(amount:"2", measure: slice, ingredient:"lime", cocktail: cocktail24)
Dose.create!(amount:"1.5", measure: oz, ingredient:"lime juice", cocktail: cocktail24)
Dose.create!(amount:"4", measure: oz, ingredient:"tequila", cocktail: cocktail24)
Dose.create!(amount:"2", measure: oz, ingredient:"Cointreau", cocktail: cocktail24)
Dose.create!(amount:"1", measure: unit, ingredient:"lime wedge", cocktail: cocktail24)
Dose.create!(amount:"1", measure: tablespoon, ingredient:"coarse salt", cocktail: cocktail24)
cocktail24.instructions = "Run lime wedge around the outer rims of 2 rocks glasses and dip rims in salt. Set aside. In a cocktail shaker, combine tequila, Cointreau, and lime juice. Fill with ice and shake until thoroughly chilled, about 15 seconds (the bottom of a metal shaker should frost over). Fill glasses with fresh ice and strain margarita into both glasses. Garnish with lime slices and serve."
cocktail24.save!
#https://www.seriouseats.com/recipes/2015/04/classic-margarita-recipe-tequila-cocktail.html
puts "Cocktail24 created"


file25 = URI.open('http://paulineglaizal.com/wp-content/uploads/2018/06/gff.png')
cocktail25 = Cocktail.new(name: "Cucumber-Mint Gin Cocktail", user: user)
cocktail25.photo.attach(io: file25, filename: 'file25', content_type: 'image/png')
Dose.create!(amount:"5", measure: slice, ingredient:"cucumber", cocktail: cocktail25)
Dose.create!(amount:"2", measure: spring, ingredient:"mint", cocktail: cocktail25)
Dose.create!(amount:"0.75", measure: oz, ingredient:"simple syrup", cocktail: cocktail25)
Dose.create!(amount:"0.75", measure: oz, ingredient:"lime juice", cocktail: cocktail25)
Dose.create!(amount:"1.5", measure: oz, ingredient:"gin", cocktail: cocktail25)
cocktail25.instructions = "Add 3 slices of cucumber, the leaves from a sprig of mint, and the simple syrup to a cocktail shaker. Muddle. Add the lime juice, gin, and ice, and shake until chilled.
Strain into an ice-filled old-fashioned glass. Spank the remaining sprig of mint before garnishing the cocktail with it and the remaining 2 slices of cucumber."
cocktail25.save!
#https://www.popsugar.com/food/Cucumber-Mint-Gin-Cocktail-34793556
puts "Cocktail25 created"


file26 = URI.open('http://paulineglaizal.com/wp-content/uploads/2018/06/B.png')
cocktail26 = Cocktail.new(name: "Mimosa", user: user)
cocktail26.photo.attach(io: file26, filename: 'file26', content_type: 'image/png')
Dose.create!(amount:"80", measure: ml, ingredient:"sparkling wine", cocktail: cocktail26)
Dose.create!(amount:"80", measure: ml, ingredient:"orange juice", cocktail: cocktail26)
Dose.create!(amount:"80", measure: ml, ingredient:"Grand Marnier or triple sec (optional)", cocktail: cocktail26)
cocktail26.instructions = "In a champagne flute, combine chilled sparkling wine, chilled orange juice and Grand Marnier or triple sec."
cocktail26.save!
#https://www.inspiredtaste.net/19516/mimosa-recipe/
puts "Cocktail26 created"


file27 = URI.open('https://i.pinimg.com/564x/18/ca/dc/18cadc0c7b455ab153a82667bcdc49ab.jpg')
cocktail27 = Cocktail.new(name: "Campari Spritz", user: user)
cocktail27.photo.attach(io: file27, filename: 'file27', content_type: 'image/png')
Dose.create!(amount:"2", measure: oz, ingredient:"Campari", cocktail: cocktail27)
Dose.create!(amount:"3", measure: oz, ingredient:"prosecco", cocktail: cocktail27)
Dose.create!(amount:"1", measure: oz, ingredient:"club soda", cocktail: cocktail27)
Dose.create!(amount:"1", measure: slice, ingredient:"orange", cocktail: cocktail27)
cocktail27.instructions = "In a rocks glass, wine glass or stemless wine glass, add 3 ice cubes. Pour campari into the glass. Pour prosecco into the glass, then top with club soda. Stir to combine all ingredients. Garnish with orange. Enjoy!"
cocktail27.save!
# https://pinabresciani.com/campari-spritz/
puts "Cocktail27 created"


file28 = URI.open('https://i.pinimg.com/564x/b9/0b/06/b90b06b97ccd4893a6ddcaf5b980d6eb.jpg')
cocktail28 = Cocktail.new(name: "Apple Cider Aperol Spritz", user: user)
cocktail28.photo.attach(io: file28, filename: 'file28', content_type: 'image/png')
Dose.create!(amount:"1", measure: part, ingredient:"Aperol", cocktail: cocktail28)
Dose.create!(amount:"2", measure: part, ingredient:"apple cider", cocktail: cocktail28)
Dose.create!(amount:"1", measure: splash, ingredient:"club soda or sparkling water", cocktail: cocktail28)
Dose.create!(amount:"2", measure: slice, ingredient:"apple", cocktail: cocktail28)
Dose.create!(amount:"2", measure: slice, ingredient:"blood orange", cocktail: cocktail28)
cocktail28.instructions = "Pour ice into the glass. Pour Aperol and top each glass with cider. Balance with club soda or sparkling water. Garnish with apple and orange slices. Enjoy!"
cocktail28.save!
#https://poshlittledesigns.com/
puts "Cocktail28 created"


file29 = URI.open('https://blog.toryburch.com/wp-content/uploads/2017/11/Cherry-Bombe-Cocktails_960_slide2.jpg')
cocktail29 = Cocktail.new(name: "Charred Pineapple Margarita", user: user)
cocktail29.photo.attach(io: file29, filename: 'file29', content_type: 'image/png')
Dose.create!(amount:"1", measure: teaspoon, ingredient:"canola oil", cocktail: cocktail29)
Dose.create!(amount:"4", measure: slice, ingredient:"small pineapple", cocktail: cocktail29)
Dose.create!(amount:"1", measure: unit, ingredient:"lime (juice)", cocktail: cocktail29)
Dose.create!(amount:"2", measure: tablespoon, ingredient:"cilantro", cocktail: cocktail29)
Dose.create!(amount:"80", measure: ml, ingredient:"tequila", cocktail: cocktail29)
Dose.create!(amount:"3", measure: tablespoon, ingredient:"triple sec", cocktail: cocktail29)
Dose.create!(amount:"2", measure: teaspoon, ingredient:"simple syrup", cocktail: cocktail29)
Dose.create!(amount:"1", measure: tablespoon, ingredient:"salt", cocktail: cocktail29)
cocktail29.instructions = "Makes 2 cocktails: set apart 2 slices of pineapple and quarter the rest. Heat a grill or grill pan over medium-high heat and brush with the canola oil. Add the pineapple pieces and slices, and grill until just soft and lightly charred, 2 to 3 minutes per side. Remove from the grill and allow to cool.

Coarsely chop the pineapple pieces and transfer to a cocktail shaker along with the lime juice and cilantro leaves. Muddle everything together until the pineapple juice is extracted. Add the tequila, triple sec, simple syrup, and plenty of ice, and shake until well chilled.

Gently rub the rim of two glasses with one of the pineapple slices. Spread the salt on a plate and swirl the rim of each glass through the salt to coat. Add some ice to each glass.

Strain and divide the margarita into the glasses. Garnish each with a pineapple slice and a few cilantro leaves and serve immediately."
cocktail29.save!
#https://www.toryburch.com/blog-post/blog-post.html?bpid=367944
puts "Cocktail29 created"


puts "Created #{Cocktail.count} cocktail(s)"

# more cocktailes
# https://i.pinimg.com/564x/94/6f/98/946f98edf90f6b47e0fb16790617519a.jpg
#https://i.pinimg.com/564x/30/38/53/3038535da65d9c6f67897a29ada5ff32.jpg
#https://i.pinimg.com/564x/d3/cd/90/d3cd903afa5a56368e7c931b9a2fe5c5.jpg
#https://i.pinimg.com/564x/9c/78/cb/9c78cbd16c3e7dc33b99054551c311fb.jpg

puts "Creating reviews"

5.times do
    Review.create!(user: User.all.sample, content: "My favorite cocktail of all time", rating:"5", cocktail: Cocktail.all.sample)
end

5.times do
    Review.create!(user: User.all.sample, content: "Simply delicious!", rating:"5", cocktail: Cocktail.all.sample)
end

5.times do
    Review.create!(user: User.all.sample, content: "A little too strong for me, but still a good cocktail", rating:"3", cocktail: Cocktail.all.sample)
end

5.times do
    Review.create!(user: User.all.sample, content: "I really didn't like this recipe, maybe I should try with other brand", rating:"2", cocktail: Cocktail.all.sample)
end

5.times do
    Review.create!(user: User.all.sample, content: "The perfect holiday cocktail, I love how all the flavours of the ingredients match together", rating:"4", cocktail: Cocktail.all.sample)
end

5.times do
    Review.create!(user: User.all.sample, content: "An awesome drink to sip by the pool!", rating:"4", cocktail: Cocktail.all.sample)
end

5.times do
    Review.create!(user: User.all.sample, content: "Trial and error pay off! Time-consuming, but so worth it.", rating:"4", cocktail: Cocktail.all.sample)
end

5.times do
    Review.create!(user: User.all.sample, content: "Couldn't finish it!", rating:"1", cocktail: Cocktail.all.sample)
end

puts "Created #{Review.count} review(s)"