require 'pry'
require 'faker'
User.destroy_all
Post.destroy_all
Comment.destroy_all
Biography.destroy_all
CatFarm.destroy_all
Category.destroy_all
Follow.destroy_all


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
user4 = User.create(username: "Bobby", password: 'password', role: 1)
user5 = User.create(username: "Dale", password: 'password', role: 1)
user6 = User.create(username: "Jimmy", password: 'password', role: 1)


states.each do |state| 
    State.create(name: state)
end 

# t.string :top
# t.string :accessories 
# t.string :hair_color
# t.string :facial_hair   
# t.string :facial_hair_color
# t.string :clothes
# t.string :color_fabric
# t.string :eyes
# t.string :eyebrow
# t.string :mouth
# t.string :skin
# t.integer :user_id

avatar1 = Avatar.create(avatar_style: 'Circle', top: 'NoHair', accessories: 'Blank', hair_color: '', hat_color: '', facial_hair: 'BeardMajestic', facial_hair_color: 'BrownDark', clothes: 'BlazerShirt', color_fabric: '', graphic: '', eyes: 'Default', eyebrow: 'Angry', mouth: 'Disbelief', skin: 'Brown', user_id: user1.id)
avatar2 = Avatar.create(avatar_style: 'Circle', top: 'ShortHairShortFlat', accessories: 'Red', hair_color: '', hat_color: '', facial_hair: 'BeardMajestic', facial_hair_color: 'BrownDark', clothes: 'BlazerShirt', color_fabric: '', graphic: '', eyes: 'Default', eyebrow: 'Angry', mouth: 'Disbelief', skin: 'Brown', user_id: user2.id)
avatar3 = Avatar.create(avatar_style: 'Circle', top: 'ShortHairShortFlat', accessories: 'Brown', hair_color: '', hat_color: '', facial_hair: 'BeardMajestic', facial_hair_color: 'BrownDark', clothes: 'BlazerShirt', color_fabric: '', graphic: '', eyes: 'Default', eyebrow: 'Angry', mouth: 'Disbelief', skin: 'Brown', user_id: user3.id)
avatar4 = Avatar.create(avatar_style: 'Circle', top: 'ShortHairShortFlat', accessories: 'SilverGrey', hair_color: '', hat_color: '', facial_hair: 'BeardMajestic', facial_hair_color: 'BrownDark', clothes: 'BlazerShirt', color_fabric: '', graphic: '', eyes: 'Default', eyebrow: 'Angry', mouth: 'Disbelief', skin: 'Brown', user_id: user4.id)
avatar5 = Avatar.create(avatar_style: 'Circle', top: 'ShortHairShortFlat', accessories: 'Blonde', hair_color: '', hat_color: '', facial_hair: 'BeardMajestic', facial_hair_color: 'BrownDark', clothes: 'BlazerShirt', color_fabric: '', graphic: '', eyes: 'Default', eyebrow: 'Angry', mouth: 'Disbelief', skin: 'Brown', user_id: user5.id)
avatar6 = Avatar.create(avatar_style: 'Circle', top: 'ShortHairShortFlat', accessories: 'Black', hair_color: '', hat_color: '', facial_hair: 'BeardMajestic', facial_hair_color: 'BrownDark', clothes: 'BlazerShirt', color_fabric: '', graphic: '', eyes: 'Default', eyebrow: 'Angry', mouth: 'Disbelief', skin: 'Brown', user_id: user6.id)



follow1 = Follow.create(follower_id: user1.id, followee_id: user3.id)
follow2 = Follow.create(follower_id: user2.id, followee_id: user3.id)


biography1 = Biography.create(name: "David Co.", description: "I am creating the database with mah brain", user_id: user1.id)
biography2 = Biography.create(name: "Collin Co.", description: "I am creating the database with mah feet", user_id: user2.id)


cat1 = Category.create(name: "Baked goods")
cat19 = Category.create(name: "Canned or preserved items")
cat15 = Category.create(name: "Cheese and/or dairy products")
cat24 = Category.create(name: "Coffee and or tea")
cat2 = Category.create(name: "Crafts and/or woodworking items")
cat16 = Category.create(name: "Cut flowers")
cat11= Category.create(name: "Dry beans")
cat3 = Category.create(name: "Eggs")
cat17 = Category.create(name: "Fish and/or seafood")
cat4 = Category.create(name: "Fresh and/or dried herbs")
cat25 = Category.create(name: "Fresh fruits")
cat18 = Category.create(name: "Fresh vegetables")
cat12 = Category.create(name: "Grains and/or flour")
cat5 = Category.create(name: "Honey")
cat26 = Category.create(name: "Juices and or non-alcoholic ciders")
cat6 = Category.create(name: "Maple syrup and/or maple products")
cat20 = Category.create(name: "Meat")
cat13 = Category.create(name: "Mushrooms")
cat7 = Category.create(name: "Nuts")
cat27 = Category.create(name: "Pet food")
cat21 = Category.create(name: "Plants in containers")
cat8 = Category.create(name: "Poultry")
cat22 = Category.create(name: "Prepared foods")
cat9 = Category.create(name: "Soap and/or body care products")
cat23 = Category.create(name: "Trees, shrubs")
cat10 = Category.create(name: "Wine, beer, hard cider")
cat14 = Category.create(name: "Tofu and/or non-animal protein")
cat28 = Category.create(name: "Wild harvested forest products")












post1 = Post.create(title: 'I believe!', content: "I hope this works", startTime: DateTime.new(2019, 8, 23), location: "the corner of noneyah business", zip: 20816, city: 'Bethesda', state_id: 20, user_id: user1.id, category_id: cat1.id)

post2 = Post.create(title: 'For Sale!', content: "For Real tho", startTime: DateTime.new(2019, 8, 25), location: "the corner of Giant Food Store", zip: 20816, city: 'Bethesda', state_id: 20, user_id: user1.id, category_id: cat15.id)

post3 = Post.create(title: 'Selling Mah Beats', content: "Selling Beats", startTime: DateTime.new(2019, 8, 27), location: "Near Apple Market", zip: 93263, city: 'Shafter', state_id: 5, user_id: user1.id, category_id: cat11.id)

post4 = Post.create(title: 'It is Yellow!!!', content: "Selling Corn", startTime: DateTime.new(2019, 8, 31), location: "Trader Joes", zip: 93263,city: 'Shafter', state_id: 5, user_id: user1.id, category_id: cat25.id)

comment1 = Comment.create(content: "will this work?", user_id: user2.id, post_id: post1.id)
comment2 = Comment.create(content: "No but this will", user_id: user3.id, post_id: post2.id)


att1 = Attend.create(user_id: user3.id, post_id: post1.id)
att2 = Attend.create(user_id: user3.id, post_id: post2.id)
att3 = Attend.create(user_id: user3.id, post_id: post3.id)
att4 = Attend.create(user_id: user3.id, post_id: post4.id)
att5 = Attend.create(user_id: user4.id, post_id: post4.id)
att6 = Attend.create(user_id: user4.id, post_id: post2.id)
att7 = Attend.create(user_id: user5.id, post_id: post4.id)
att8  = Attend.create(user_id: user5.id, post_id: post3.id)
att9 = Attend.create(user_id: user6.id, post_id: post4.id)
att10 = Attend.create(user_id: user6.id, post_id: post1.id)

# binding.pry


 