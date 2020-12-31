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

units = %w(lb oz mg g kg ml dl cl l cc teaspoon tablespoon cup unit handful)

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
cocktail1 = Cocktail.new(name: "Cold Brew Martini", user: User.all.sample)
cocktail1.photo.attach(io: file1, filename: 'file1', content_type: 'image/png')
cocktail1.save!
#https://www.townandcountrymag.com/leisure/drinks/g3108/winter-cocktails/

file2 = URI.open('https://images.squarespace-cdn.com/content/v1/568bea5540667a54498bf784/1510145534421-NOJRCS609UATL7HIQ8P5/ke17ZwdGBToddI8pDm48kJ7__POZwihxtEhziEAJlYJ7gQa3H78H3Y0txjaiv_0fDoOvxcdMmMKkDsyUqMSsMWxHk725yiiHCCLfrh8O1z5QPOohDIaIeljMHgDF5CVlOqpeNLcJ80NK65_fV7S1Ufow0MSAm9jSXDt4kDII2NxqevN2anL_CgBhZPp9gzv_sgCgF34VRV8MtN345OkU5A/COCKTAIL_TEST_YELLOW-BLUE.jpg?format=1000w')
cocktail2 = Cocktail.new(name: "Bronco-tini", user: User.all.sample)
cocktail2.photo.attach(io: file2, filename: 'file2', content_type: 'image/png')
cocktail2.save!
#https://rockymountaincooking.com/2014/01/bronco-tini/

file3 = URI.open('https://fast.clickbooq.com/b4c33d-986/150324WhiskeyCocktails10344FF-lg.jpg')
cocktail3 = Cocktail.new(name: "Lemon mojito", user: User.all.sample)
cocktail3.photo.attach(io: file3, filename: 'file3', content_type: 'image/png')
cocktail3.save!
#https://www.taste.com.au/recipes/lemon-mojito/c33f7f13-eadb-448b-92b4-d41b70c6e733

file4 = URI.open('https://d33wubrfki0l68.cloudfront.net/faf06601d43e9895e34bf6d708379c75a78227e5/f2550/thumbs/drink/long-flint-negroni-cocktail-in-a-pop-art-style-3200x2133-q60.jpg')
cocktail4 = Cocktail.new(name: "Negroni sbagliato", user: User.all.sample)
cocktail4.photo.attach(io: file4, filename: 'file4', content_type: 'image/png')
cocktail4.save!
#http://www.campari.com/es/our-cocktails%23negroni-sbagliato

file5 = URI.open('https://i.pinimg.com/originals/76/ba/04/76ba04684db9b26d5b1ff6316d347342.jpg')
cocktail5 = Cocktail.new(name: "Orange Gin&Tonic", user: User.all.sample)
cocktail5.photo.attach(io: file5, filename: 'file5', content_type: 'image/png')
cocktail5.save!
#https://www.wine-liquor.store/gin-and-tonic-with-dried-orange-and-rosemary/

file6 = URI.open('https://i.pinimg.com/originals/60/fc/84/60fc845d20f60084585b9019bef98bac.jpg')
cocktail6 = Cocktail.new(name: "Mango Sunrise", user: User.all.sample)
cocktail6.photo.attach(io: file6, filename: 'file6', content_type: 'image/png')
cocktail6.save!
#https://www.quericavida.com/recipes/mango-sunrise-margarita/5741791e-5713-4abe-a84e-1f646b5815bc

file7 = URI.open('https://e217ee5bcd3a52e63f53-b815795030fa426f049b29aca2f565ed.ssl.cf1.rackcdn.com/fooddrink.jpg')
cocktail7 = Cocktail.new(name: "Old Fashioned", user: User.all.sample)
cocktail7.photo.attach(io: file7, filename: 'file7', content_type: 'image/png')
cocktail7.save!
#https://cooking.nytimes.com/recipes/1018343-old-fashioned

file8 = URI.open('https://c.stocksy.com/a/izbA00/z9/2529334.jpg')
cocktail8 = Cocktail.new(name: "Whiskey Sour", user: User.all.sample)
cocktail8.photo.attach(io: file8, filename: 'file8', content_type: 'image/png')
cocktail8.save!
#https://www.culinaryhill.com/whiskey-sour-cocktail/

file9 = URI.open('https://i.guim.co.uk/img/media/43bea28160ef11e3f14a087b2b44ed682e73442f/0_374_5760_3456/master/5760.jpg?width=1200&height=900&quality=85&auto=format&fit=crop&s=884e98419ee7380321144c1051706b49')
cocktail9 = Cocktail.new(name: "Rosé Spritz", user: User.all.sample)
cocktail9.photo.attach(io: file9, filename: 'file9', content_type: 'image/png')
cocktail9.save!
#https://www.saltandlavender.com/easy-rose-spritzer-recipe/

file10 = URI.open('https://assets.punchdrink.com/wp-content/uploads/2019/09/04145824/Article-Lychee-Martini-90s-cocktail.jpg')
cocktail10 = Cocktail.new(name: "Lychee Martini", user: User.all.sample)
cocktail10.photo.attach(io: file10, filename: 'file10', content_type: 'image/png')
cocktail10.save!
#https://www.foodnetwork.com/recipes/lychee-martini-recipe-1939454

file12 = URI.open('https://cdn.hourdetroit.com/wp-content/uploads/sites/20/2019/07/violet-eyes.jpg')
cocktail12 = Cocktail.new(name: "Violet eyes", user: User.all.sample)
cocktail12.photo.attach(io: file12, filename: 'file12', content_type: 'image/png')
cocktail12.save!
# https://www.hourdetroit.com/restaurants-food/pinkys-rooftop-cocktail-recipe/

file13 = URI.open('https://i.pinimg.com/originals/9c/ec/cf/9ceccffcf363c999f956644ab40efae6.png')
cocktail13 = Cocktail.new(name: "Pink flamingo", user: User.all.sample)
cocktail13.photo.attach(io: file13, filename: 'file13', content_type: 'image/png')
cocktail13.save!
#https://www.thespruceeats.com/uv-pink-flamingo-cocktail-761196

file14 = URI.open('https://dspncdn.com/a1/media/692x/6d/68/1b/6d681b50f698c5cb236651419bec9ecd.jpg')
cocktail14 = Cocktail.new(name: "Pomegranate Gin", user: User.all.sample)
cocktail14.photo.attach(io: file14, filename: 'file14', content_type: 'image/png')
cocktail14.save!
#https://www.yuppiechef.com/spatula/delicious-pomegranate-gin-cocktail/

file15 = URI.open('https://images.squarespace-cdn.com/content/v1/57ca223ae6f2e1669706c2ed/1601298622001-SJCOJXFFTXD0QD39RJFM/ke17ZwdGBToddI8pDm48kI02I_04z7NidtXoqs_KwB97gQa3H78H3Y0txjaiv_0fDoOvxcdMmMKkDsyUqMSsMWxHk725yiiHCCLfrh8O1z5QHyNOqBUUEtDDsRWrJLTmi7D7yXkH8nfwsxTs5kW9h_SwVOxnimb__0u_N8uJDJ53X9_QaGwb3XCO2XXabC5A/taryn-sundae-studio-perth-food-photography-83.jpg')
cocktail15 = Cocktail.new(name: "Matcha cocktail", user: User.all.sample)
cocktail15.photo.attach(io: file15, filename: 'file15', content_type: 'image/png')
cocktail15.save!
#https://www.absolutdrinks.com/en/drinks/matcha-cocktail/

file17 = URI.open('https://images.squarespace-cdn.com/content/v1/5b478d5e266c07ae6c7522b6/1549552902173-SHETE9B7VU64KNOB27Y9/ke17ZwdGBToddI8pDm48kNmwz4ZxpHElRG9D_GYMwrB7gQa3H78H3Y0txjaiv_0fDoOvxcdMmMKkDsyUqMSsMWxHk725yiiHCCLfrh8O1z5QHyNOqBUUEtDDsRWrJLTmbA40xHUQunj0vJznaJavl9mMTyKVHTLO7x6JuTMOzG2Xg30WRiMxj_d8NUwGDZ7B/Mister-Paradise-Food-and-Beverage-Photography-All-Good-NYC-16.jpg?format=1500w')
cocktail17 = Cocktail.new(name: "Dark Moon", user: User.all.sample)
cocktail17.photo.attach(io: file17, filename: 'file17', content_type: 'image/png')
cocktail17.save!
#https://www.bonappetit.com/recipe/dark-moon

file18 = URI.open('https://cdn.shopify.com/s/files/1/1002/8980/articles/italianspritzsquare_1200x1500_crop_center.jpg?v=1525818885')
cocktail18 = Cocktail.new(name: "Italian Spritz", user: User.all.sample)
cocktail18.photo.attach(io: file18, filename: 'file18', content_type: 'image/png')
cocktail18.save!
#https://wandpdesign.com/blogs/thekitchen/the-italian-spritz

file19 = URI.open('https://www.cointreau.com/us/en/sites/us/files/styles/gallery_image_small/public/cocktail-images/Cointreau-cocktail-Acceptance-Speech.jpg?itok=2OzDmuxI')
cocktail19 = Cocktail.new(name: "Acceptance Speech", user: User.all.sample)
cocktail19.photo.attach(io: file19, filename: 'file19', content_type: 'image/png')
cocktail19.save!
# A glowing, celebratory spritz worthy of a gold envelope.
# Ingredientes
# 30.00ml / 1.00oz Cointreau
# 30.00ml / 1.00oz fresh grapefruit juice
# 90.00ml / 3.00oz elderflower tonic
# 60.00ml / 2.00oz prosecco
# 1 pinch edible gold leaf

file20 = URI.open('https://www.acouplecooks.com/wp-content/uploads/2020/04/Tequila-Sunrise-003s.jpg')
cocktail20 = Cocktail.new(name: "Tequila Sunrise", user: User.all.sample)
cocktail20.photo.attach(io: file20, filename: 'file20', content_type: 'image/png')
cocktail20.save!
# Here's how to make a tequila sunrise! This vibrant cocktail layers the colors of a summer sunrise ...
# Ingredientes
# 2 ounces (4 tablespoons) tequila
# 4 ounces (1/2 cup) orange juice
# 3/4 ounce (1 1/2 tablespoons) grenadine syrup (purchased or homemade)
# Ice (try our clear ice!)
# For the garnish: Cocktail cherry, orange juice


file21 = URI.open('http://paulineglaizal.com/wp-content/uploads/2018/06/P1.png')
cocktail21 = Cocktail.new(name: "Chamomile Gin", user: User.all.sample)
cocktail21.photo.attach(io: file21, filename: 'file21', content_type: 'image/png')
cocktail21.save!

#https://www.bonappetit.com/recipe/chamomile-gin-cocktail

file22 = URI.open('https://dspncdn.com/a1/media/692x/51/8f/c5/518fc5c0864157a7469173089198ac68.jpg')
cocktail22 = Cocktail.new(name: "Elderflower Gin", user: User.all.sample)
cocktail22.photo.attach(io: file22, filename: 'file22', content_type: 'image/png')
cocktail22.save!

#https://kitchenswagger.com/bohemian-cocktail-with-elderflower-foam-recipe/

file23 = URI.open('https://i.pinimg.com/564x/8f/65/26/8f65262a875e72d77d88b3f4bad3eb3a.jpg')
cocktail23 = Cocktail.new(name: "Screwdriver", user: User.all.sample)
cocktail23.photo.attach(io: file23, filename: 'file23', content_type: 'image/png')
cocktail23.save!

#https://www.inspiredtaste.net/8079/screwdriver-recipe/

file24 = URI.open('http://paulineglaizal.com/wp-content/uploads/2018/06/A.png')
cocktail24 = Cocktail.new(name: "Margarita", user: User.all.sample)
cocktail24.photo.attach(io: file24, filename: 'file24', content_type: 'image/png')
cocktail24.save!

#https://www.seriouseats.com/recipes/2015/04/classic-margarita-recipe-tequila-cocktail.html

file25 = URI.open('http://paulineglaizal.com/wp-content/uploads/2018/06/gff.png')
cocktail25 = Cocktail.new(name: "Cucumber-Mint Gin Cocktail", user: User.all.sample)
cocktail25.photo.attach(io: file25, filename: 'file25', content_type: 'image/png')
cocktail25.save!

#https://www.popsugar.com/food/Cucumber-Mint-Gin-Cocktail-34793556

file26 = URI.open('http://paulineglaizal.com/wp-content/uploads/2018/06/B.png')
cocktail26 = Cocktail.new(name: "Mimosa", user: User.all.sample)
cocktail26.photo.attach(io: file26, filename: 'file26', content_type: 'image/png')
cocktail26.save!

#https://www.inspiredtaste.net/19516/mimosa-recipe/

file16 = URI.open('http://www.jackspiceradams.com/wp-content/uploads/2019/03/IMG_5732.jpg')
cocktai16 = Cocktail.new(name: "Pear Collins", user: User.all.sample)
cocktai16.photo.attach(io: file26, filename: 'file26', content_type: 'image/png')
cocktail16.save!

#https://livelytable.com/pear-collins-cocktail/

file27 = URI.open('https://i.pinimg.com/564x/18/ca/dc/18cadc0c7b455ab153a82667bcdc49ab.jpg')
cocktail27 = Cocktail.new(name: "Campari Spritz", user: User.all.sample)
cocktail27.photo.attach(io: file27, filename: 'file27', content_type: 'image/png')
cocktail27.save!

# https://www.seriouseats.com/recipes/2011/06/campari-spritz-recipe.html

file28 = URI.open('https://i.pinimg.com/564x/b9/0b/06/b90b06b97ccd4893a6ddcaf5b980d6eb.jpg')
cocktail28 = Cocktail.new(name: "Apple Verjus Spritz", user: User.all.sample)
cocktail28.photo.attach(io: file28, filename: 'file28', content_type: 'image/png')
cocktail28.save!

# 4 ingredientes
# Frutas y verduras
# 1 handful Apple and blood orange, Slices
# 1/2 oz Simple syrup
# 2 oz Soda
# 3 oz Verjus

file29 = URI.open('https://blog.toryburch.com/wp-content/uploads/2017/11/Cherry-Bombe-Cocktails_960_slide2.jpg')
cocktail29 = Cocktail.new(name: "Charred Pineapple Margarita", user: User.all.sample)
cocktail29.photo.attach(io: file26, filename: 'file26', content_type: 'image/png')
cocktail29.save!
#https://www.toryburch.com/blog-post/blog-post.html?bpid=367944


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
    Review.create!(user: User.all.sample, content: "A little too strong for me, but still a good cocktail", rating:"3", cocktail: Cocktail.all.sample)
end

3.times do
    Review.create!(user: User.all.sample, content: "I really didn't like this recipe, maybe I should try with other brand", rating:"2", cocktail: Cocktail.all.sample)
end

3.times do
    Review.create!(user: User.all.sample, content: "The perfect holiday cocktail, I love how all the flavours of the ingredients match together", rating:"4", cocktail: Cocktail.all.sample)
end

3.times do
    Review.create!(user: User.all.sample, content: "An awesome drink to sip by the pool!", rating:"4", cocktail: Cocktail.all.sample)
end

3.times do
    Review.create!(user: User.all.sample, content: "Trial and error pay off! Time-consuming, but so worth it.", rating:"3", cocktail: Cocktail.all.sample)
end

5.times do
    Review.create!(user: User.all.sample, content: "Couldn't finish it!", rating:"1", cocktail: Cocktail.all.sample)
end


#Review.create!(user: User.all.sample, content: "I love this cocktail!", rating:"5", cocktail: Cocktail.all.sample)
#Review.create!(user: User.all.sample, content: "Not good... I couldn't finish it", rating:"2", cocktail: Cocktail.all.sample)

puts "Created #{Review.count} review(s)"