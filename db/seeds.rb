# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
brand_a = Brand.create(name: "Colectivo Coffee", location: "Milwaukee, Wisconsin")
brand_b = Brand.create(name: "Huckleberry Roasters", location: "Denver, Colorado")
brand_c = Brand.create(name: "Stumptown Coffee", location: "Portland, Oregon")
brand_d = Brand.create(name: "Starbucks Coffee", location: "Seattle, Washington")
brand_e = Brand.create(name: "Trader Joes", location: "Pasadena, California")
brand_f = Brand.create(name: "Peets Coffee", location: "Berkeley, California")

coffee_a = Coffeee.create(name: "Toro", roast: "Dark", body: "Medium", acidity: "Medium", category: "Robusta", imgurl: "https://cdn.shopify.com/s/files/1/0215/8796/products/DecafToroHero.jpg?v=1529330333", brand: brand_a)
coffee_b = Coffeee.create(name: "Blue Heeler", roast: "Medium", body: "Full", acidity: "Low", category: "Arabica", imgurl: "https://cdn.shopify.com/s/files/1/1765/5227/products/Colectivo_Blue_Healer_small_for_web_6b770b8f-e341-45b1-992b-745b606e1eb2.png?v=1580923738", brand: brand_a)
coffee_c = Coffeee.create(name: "Sound and Vision", roast: "Medium", body: "Mid", acidity: "Medium", category: "Liberica", imgurl: "https://cdn.shopify.com/s/files/1/0299/9077/products/SoundandVision-STICKER-BAG-MOCKUP.jpg", brand: brand_b)
coffee_d = Coffeee.create(name: "Holler Mountain", roast: "Medium", body: "Full", acidity: "High", category: "Excelsa", imgurl: "https://d1rusy4hxccwbq.cloudfront.net/spree/images/1691/pdp_desktop_medium/media.nl?1524324733", brand: brand_c)
coffee_e = Coffeee.create(name: "Passport Series: West Java", roast: "Light", body: "Mid", acidity: "Medium", category: "Arabica", imgurl: "https://globalassets.starbucks.com/assets/ee0d10db73914d069cc525c71bd67a8a.jpg?impolicy=1by1_wide_1242", brand: brand_d)
coffee_f = Coffeee.create(name: "Blonde Espresso Roast", roast: "Light", body: "Medium", acidity: "High", category: "Robusta", imgurl: "https://globalassets.starbucks.com/assets/9f1e696dfebf4e43b706dff28840debe.jpg?impolicy=1by1_wide_1242", brand: brand_d)
coffee_g = Coffeee.create(name: "French Roast", roast: "Dark", body: "Mid", acidity: "Low", category: "Liberica", brand: brand_e)
coffee_h = Coffeee.create(name: "Major Dickason's Blend", roast: "Medium", body: "Medium", acidity: "Low", category: "Arabica", imgurl: "https://images-na.ssl-images-amazon.com/images/I/71ep7N9UbJL._SX425_.jpg", brand: brand_f)

review_a = Review.create(rating: 5, style: "French Press", recipe: "Black", adatives: "None", details: "Love Love Love Colectivo coffee, and Blue Heeler is my favorite!", favorite: true, coffeee: coffee_b )
review_b = Review.create(rating: 4, style: "Drip", recipe: "Cappucino", adatives: "Cream", details: "I am a big time fan of the coffee and the price of Trader Joes French Roast. So good!", favorite: true, coffeee: coffee_g )
review_c = Review.create(rating: 3, style: "Drip", recipe: "Cappucino", adatives: "Cream", details: "In a pinch I will choose Peets, but not my usual go to for the family for the price.", favorite: false, coffeee: coffee_h )
review_d = Review.create(rating: 5, style: "Espresso", recipe: "Espresso", adatives: "Cream", details: "Starbucks coffee has me wired! I love the blonde espresso because it has the right flavor and lightness combo for my needs.", favorite: true, user: user_c, coffeee: coffee_f )
review_a = Review.create(rating: 5, style: "French Press", recipe: "Black", adatives: "None", details: "Colectivo's espresso coffee. It's a bit strong flavored for me, but I can handle it in a time of need.", favorite: false, coffeee: coffee_a )
review_b = Review.create(rating: 4, style: "Drip", recipe: "Cappucino", adatives: "Cream", details: "Love Huck coffee's branding and packaging, and the Sound and Color coffee's quality matches it well!", favorite: true, coffeee: coffee_c )
review_c = Review.create(rating: 3, style: "Drip", recipe: "Cappucino", adatives: "Cream", details: "A little out of my norm here, but I Stumptown has become my favorite little coffee shop!", favorite: true, coffeee: coffee_d )
review_d = Review.create(rating: 5, style: "French Press", recipe: "Black", adatives: "Cream", details: "Starbucks coffee has me wired! These limited edition West Java beans are the best I have had from them.", favorite: true, user: user_c, coffeee: coffee_e )
