require 'pry'
require 'faker'
User.destroy_all
Post.destroy_all
Comment.destroy_all
Biography.destroy_all
CatFarm.destroy_all
Category.destroy_all
Follow.destroy_all
Product.destroy_all

states = ["Alabama","Alaska","Arizona","Arkansas","California","Colorado",
"Connecticut","Delaware","Florida","Georgia","Hawaii","Idaho","Illinois",
"Indiana","Iowa","Kansas","Kentucky","Louisiana","Maine","Maryland",
"Massachusetts","Michigan","Minnesota","Mississippi","Missouri","Montana",
"Nebraska","Nevada","New Hampshire","New Jersey","New Mexico","New York",
"North Carolina","North Dakota","Ohio","Oklahoma","Oregon","Pennsylvania",
"Rhode Island","South Carolina","South Dakota","Tennessee","Texas","Utah",
"Vermont","Virginia","Washington","West Virginia","Wisconsin","Wyoming"]
user1 = User.create(username: "Dave" , password: "password", role: 0)
user2 = User.create(username: "Collin", password: "password", role: 0 )
user3 = User.create(username: "Peter", password: "password", role: 1)

states.each do |state| 
    State.create(name: state)
end 




follow1 = Follow.create(follower_id: user1.id, followee_id: user3.id)
follow2 = Follow.create(follower_id: user2.id, followee_id: user3.id)


biography1 = Biography.create(name: "David Co.", description: "I am creating the database with mah brain", user_id: user1.id)
biography2 = Biography.create(name: "Collin Co.", description: "I am creating the database with mah feet", user_id: user2.id)


cat1 = Category.create(name: "Baked goods")
cat2 = Category.create(name: "Crafts and/or woodworking items")
cat3 = Category.create(name: "Eggs")
cat4 = Category.create(name: "Fresh and/or dried herbs")
cat5 = Category.create(name: "Honey")
cat6 = Category.create(name: "Maple syrup and/or maple products")
cat7 = Category.create(name: "Nuts")
cat8 = Category.create(name: "Poultry")
cat9 = Category.create(name: "Soap and/or body care products")
cat10 = Category.create(name: "Wine, beer, hard cider")
cat11= Category.create(name: "Dry beans")
cat12 = Category.create(name: "Grains and/or flour")
cat13 = Category.create(name: "Mushrooms")
cat14 = Category.create(name: "Tofu and/or non-animal protein")
cat15 = Category.create(name: "Cheese and/or dairy products")
cat16 = Category.create(name: "Cut flowers")
cat17 = Category.create(name: "Fish and/or seafood")
cat18 = Category.create(name: "Fresh vegetables")
cat19 = Category.create(name: "Canned items")
cat20 = Category.create(name: "Meat")
cat21 = Category.create(name: "Plants in containers")
cat22 = Category.create(name: "Prepared foods")
cat23 = Category.create(name: "Trees, shrubs")
cat24 = Category.create(name: "Coffee and or tea")
cat25 = Category.create(name: "Fresh fruits")
cat26 = Category.create(name: "Juices and or non-alcoholic ciders")
cat27 = Category.create(name: "Pet food")
cat28 = Category.create(name: "Wild harvested forest products")



post1 = Post.create(title: 'I believe!', content: "I hope this works", startTime: DateTime.new(2019, 8, 23), location: "the corner of noneyah business", zip: 20816, state_id: 20, attending: 7, user_id: user1.id, category_id: cat1.id)
post2 = Post.create(title: 'For Sale!', content: "For Real tho", startTime: DateTime.new(2019, 8, 25), location: "the corner of Giant Food Store", zip: 20816, state_id: 20, attending: 12, user_id: user1.id, category_id: cat15.id)
post3 = Post.create(title: 'Selling Mah Beats', content: "Selling Beats", startTime: DateTime.new(2019, 8, 27), location: "Near Apple Market", zip: 93263, state_id: 5, attending: 9, user_id: user1.id, category_id: cat11.id)
post3 = Post.create(title: 'It is Yellow!!!', content: "Selling Corn", startTime: DateTime.new(2019, 8, 31), location: "Trader Joes", zip: 93263, state_id: 5, attending: 10, user_id: user1.id, category_id: cat25.id)

comment1 = Comment.create(content: "will this work?", user_id: user2.id, post_id: post1.id)
comment2 = Comment.create(content: "No but this will", user_id: user3.id, post_id: post2.id)


prod1 = Product.create(name: "fish", user_id: user1.id, price: "1.70")
prod2 = Product.create(name: "watermelon", user_id: user2.id, price: "3.70")
prod3 = Product.create(name: "carrots", user_id: user1.id, price: ".70")
prod4 = Product.create(name: "corn", user_id: user2.id, price: ".50")
prod5 = Product.create(name: "honey", user_id: user1.id, price: "10.70")
prod6 = Product.create(name: "tree bark", user_id: user2.id, price: "0")

# binding.pry


 