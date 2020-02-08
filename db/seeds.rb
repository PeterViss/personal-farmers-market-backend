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
user3 = User.create(username: "James", password: 'password', role: 0)
user4 = User.create(username: "Johnny", password: 'password', role: 0)
user5 = User.create(username: "Peter", password: "password", role: 1)
user6 = User.create(username: "Bobby", password: 'password', role: 1)
user7 = User.create(username: "Dale", password: 'password', role: 1)
user8 = User.create(username: "Jimmy", password: 'password', role: 1)



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

avatar1 = Avatar.create(avatar_style: 'Transparent', top: 'NoHair', accessories: 'Wayfarers', hair_color: '', hat_color: '', facial_hair: 'BeardMajestic', facial_hair_color: 'BrownDark', clothes: 'BlazerShirt', color_fabric: '', eyes: 'Default', eyebrow: 'Angry', mouth: 'Disbelief', skin: 'Brown', user_id: user1.id)
avatar2 = Avatar.create(avatar_style: 'Transparent', top: 'ShortHairDreads01', accessories: 'Wayfarers', hair_color: 'Brown', hat_color: '', facial_hair: 'BeardMajestic', facial_hair_color: 'BrownDark', clothes: 'BlazerShirt', color_fabric: '', eyes: 'Default', eyebrow: 'Angry', mouth: 'Disbelief', skin: 'Brown', user_id: user2.id)
avatar3 = Avatar.create(avatar_style: 'Transparent', top: 'ShortHairFrizzle', accessories: 'Wayfarers', hair_color: 'Brown', hat_color: '', facial_hair: 'BeardMajestic', facial_hair_color: 'BrownDark', clothes: 'BlazerShirt', color_fabric: '', eyes: 'Default', eyebrow: 'Angry', mouth: 'Disbelief', skin: 'Brown', user_id: user3.id)
avatar4 = Avatar.create(avatar_style: 'Transparent', top: 'ShortHairShortCurly', accessories: 'Wayfarers', hair_color: 'Brown', hat_color: '', facial_hair: 'BeardMajestic', facial_hair_color: 'BrownDark', clothes: 'BlazerShirt', color_fabric: '', eyes: 'Default', eyebrow: 'Angry', mouth: 'Disbelief', skin: 'Brown', user_id: user4.id)
avatar5 = Avatar.create(avatar_style: 'Transparent', top: 'WinterHat3', accessories: 'Wayfarers', hair_color: 'Blonde', hat_color: '', facial_hair: 'BeardMajestic', facial_hair_color: 'BrownDark', clothes: 'BlazerShirt', color_fabric: '', eyes: 'Default', eyebrow: 'Angry', mouth: 'Disbelief', skin: 'Brown', user_id: user5.id)
avatar6 = Avatar.create(avatar_style: 'Transparent', top: 'Hat', accessories: 'Wayfarers', hair_color: 'Brown', hat_color: '', facial_hair: 'BeardMajestic', facial_hair_color: 'BrownDark', clothes: 'BlazerShirt', color_fabric: '', eyes: 'Default', eyebrow: 'Angry', mouth: 'Disbelief', skin: 'Brown', user_id: user6.id)
avatar7 = Avatar.create(avatar_style: 'Transparent', top: 'ShortHairDreads01', accessories: 'Wayfarers', hair_color: 'Blonde', hat_color: '', facial_hair: 'BeardMajestic', facial_hair_color: 'BrownDark', clothes: 'BlazerShirt', color_fabric: '', eyes: 'Default', eyebrow: 'Angry', mouth: 'Disbelief', skin: 'Brown', user_id: user7.id)
avatar8 = Avatar.create(avatar_style: 'Transparent', top: 'LongHairFro', accessories: 'Wayfarers', hair_color: 'Brown', hat_color: '', facial_hair: 'BeardMajestic', facial_hair_color: 'BrownDark', clothes: 'BlazerShirt', color_fabric: '', eyes: 'Default', eyebrow: 'Angry', mouth: 'Disbelief', skin: 'Brown', user_id: user8.id)


follow1 = Follow.create(follower_id: user1.id, followee_id: user5.id)
follow2 = Follow.create(follower_id: user2.id, followee_id: user6.id)
follow3 = Follow.create(follower_id: user3.id, followee_id: user7.id)
follow4 = Follow.create(follower_id: user4.id, followee_id: user8.id)
follow5 = Follow.create(follower_id: user1.id, followee_id: user8.id)
follow6 = Follow.create(follower_id: user2.id, followee_id: user8.id)
follow7 = Follow.create(follower_id: user3.id, followee_id: user6.id)
follow8 = Follow.create(follower_id: user4.id, followee_id: user6.id)
follow9 = Follow.create(follower_id: user3.id, followee_id: user5.id)
follow10 = Follow.create(follower_id: user2.id, followee_id: user5.id)



biography1 = Biography.create(name: "David's Agriculture Company", description: "I am a multi-agricultural, organic farmer that grows all sorts of fruits and vegetables. However, I also like to bake.", user_id: user1.id)
biography2 = Biography.create(name: "Collin's Beats Company", description: "I grow beats in my backyard. I have been doing this for the last 15 years and I think I know how to grow quality beats.", user_id: user2.id)
biography3 = Biography.create(name: "Jame's Honey Company", description: "I get the honey straight from the hive. I sell pure, cloth strained honey and also honey comb with the honey. I can also work out a deal on getting some royal jelly for you as well.", user_id: user3.id)
biography4 = Biography.create(name: "Johnny's Apple Company", description: "I sell granny smith apples from my apple trees in my backyard. You may as well call me Johnny Appleseed except I probably have more experience.", user_id: user4.id)


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



zips = [20810, 20811, 20813, 20814, 20815, 20816, 20812, 20815, 20817, 20824, 20825, 20827, 20889, 20892, 20894, 22101]
cats = [cat5.id, cat18.id, cat25.id, cat1.id]


50.times do
  Post.create(title: Faker::Lorem.sentence(word_count: 4), content: Faker::Lorem.sentence(word_count: 20), startTime: Faker::Date.between(from: 2.days.ago, to: 3.months.from_now), location: Faker::Lorem.sentence(word_count: 7), zip: zips.sample, city: Faker::Lorem.sentence(word_count: 1), state_id: 20, user_id: rand(1..4), category_id: cats.sample)
end




# post1 = Post.create(title: 'I believe!', content: "I hope this works", startTime: DateTime.new(2019, 8, 23), location: "the corner of noneyah business", zip: 20816, city: 'Bethesda', state_id: 20, user_id: user1.id, category_id: cat1.id)
# post2 = Post.create(title: 'For Sale!', content: "For Real tho", startTime: DateTime.new(2019, 8, 25), location: "the corner of Giant Food Store", zip: 20816, city: 'Bethesda', state_id: 20, user_id: user1.id, category_id: cat15.id)
# post3 = Post.create(title: 'Selling Mah Beats', content: "Selling Beats", startTime: DateTime.new(2019, 8, 27), location: "Near Apple Market", zip: 93263, city: 'Shafter', state_id: 5, user_id: user1.id, category_id: cat11.id)
# post4 = Post.create(title: 'It is Yellow!!!', content: "Selling Corn", startTime: DateTime.new(2019, 8, 31), location: "Trader Joes", zip: 93263,city: 'Shafter', state_id: 5, user_id: user1.id, category_id: cat25.id)
# post5 = Post.create(title: 'Corn For Sale', content: "I am selling corn this weekend, it is what is left over from the last season. So it will be half price.", startTime: DateTime.new(2019, 8, 24), location: "Near the gas station", zip: 20816, city: 'Bethesda', state_id: 20, user_id: user1.id, category_id: cat1.id)
# post6 = Post.create(title: 'For Sale!', content: "For Real tho", startTime: DateTime.new(2019, 8, 25), location: "the corner of Giant Food Store", zip: 20816, city: 'Bethesda', state_id: 20, user_id: user1.id, category_id: cat15.id)
# post7 = Post.create(title: 'Selling Mah Beats', content: "Selling Beats", startTime: DateTime.new(2019, 8, 27), location: "Near Apple Market", zip: 93263, city: 'Shafter', state_id: 5, user_id: user1.id, category_id: cat11.id)
# post8 = Post.create(title: 'It is Yellow!!!', content: "Selling Corn", startTime: DateTime.new(2019, 8, 31), location: "Trader Joes", zip: 93263,city: 'Shafter', state_id: 5, user_id: user1.id, category_id: cat25.id)
# post9 = Post.create(title: 'I believe!', content: "I hope this works", startTime: DateTime.new(2019, 8, 23), location: "the corner of noneyah business", zip: 20816, city: 'Bethesda', state_id: 20, user_id: user1.id, category_id: cat1.id)
# post10 = Post.create(title: 'For Sale!', content: "For Real tho", startTime: DateTime.new(2019, 8, 25), location: "the corner of Giant Food Store", zip: 20816, city: 'Bethesda', state_id: 20, user_id: user1.id, category_id: cat15.id)
# post11 = Post.create(title: 'Selling Mah Beats', content: "Selling Beats", startTime: DateTime.new(2019, 8, 27), location: "Near Apple Market", zip: 93263, city: 'Shafter', state_id: 5, user_id: user1.id, category_id: cat11.id)
# post12 = Post.create(title: 'It is Yellow!!!', content: "Selling Corn", startTime: DateTime.new(2019, 8, 31), location: "Trader Joes", zip: 93263,city: 'Shafter', state_id: 5, user_id: user1.id, category_id: cat25.id)
# post13 = Post.create(title: 'I believe!', content: "I hope this works", startTime: DateTime.new(2019, 8, 23), location: "the corner of noneyah business", zip: 20816, city: 'Bethesda', state_id: 20, user_id: user1.id, category_id: cat1.id)
# post14 = Post.create(title: 'For Sale!', content: "For Real tho", startTime: DateTime.new(2019, 8, 25), location: "the corner of Giant Food Store", zip: 20816, city: 'Bethesda', state_id: 20, user_id: user1.id, category_id: cat15.id)
# post15 = Post.create(title: 'Selling Mah Beats', content: "Selling Beats", startTime: DateTime.new(2019, 8, 27), location: "Near Apple Market", zip: 93263, city: 'Shafter', state_id: 5, user_id: user1.id, category_id: cat11.id)
# post16 = Post.create(title: 'It is Yellow!!!', content: "Selling Corn", startTime: DateTime.new(2019, 8, 31), location: "Trader Joes", zip: 93263,city: 'Shafter', state_id: 5, user_id: user1.id, category_id: cat25.id)
# post17 = Post.create(title: 'I believe!', content: "I hope this works", startTime: DateTime.new(2019, 8, 23), location: "the corner of noneyah business", zip: 20816, city: 'Bethesda', state_id: 20, user_id: user1.id, category_id: cat1.id)
# post18= Post.create(title: 'For Sale!', content: "For Real tho", startTime: DateTime.new(2019, 8, 25), location: "the corner of Giant Food Store", zip: 20816, city: 'Bethesda', state_id: 20, user_id: user1.id, category_id: cat15.id)
# post19 = Post.create(title: 'Selling Mah Beats', content: "Selling Beats", startTime: DateTime.new(2019, 8, 27), location: "Near Apple Market", zip: 93263, city: 'Shafter', state_id: 5, user_id: user1.id, category_id: cat11.id)
# post20 = Post.create(title: 'It is Yellow!!!', content: "Selling Corn", startTime: DateTime.new(2019, 8, 31), location: "Trader Joes", zip: 93263,city: 'Shafter', state_id: 5, user_id: user1.id, category_id: cat25.id)


# post21 = Post.create(title: 'I believe!', content: "I hope this works", startTime: DateTime.new(2019, 8, 23), location: "the corner of noneyah business", zip: 20816, city: 'Bethesda', state_id: 20, user_id: user1.id, category_id: cat1.id)
# post22 = Post.create(title: 'For Sale!', content: "For Real tho", startTime: DateTime.new(2019, 8, 25), location: "the corner of Giant Food Store", zip: 20816, city: 'Bethesda', state_id: 20, user_id: user1.id, category_id: cat15.id)
# post23 = Post.create(title: 'Selling Mah Beats', content: "Selling Beats", startTime: DateTime.new(2019, 8, 27), location: "Near Apple Market", zip: 93263, city: 'Shafter', state_id: 5, user_id: user1.id, category_id: cat11.id)
# post24 = Post.create(title: 'It is Yellow!!!', content: "Selling Corn", startTime: DateTime.new(2019, 8, 31), location: "Trader Joes", zip: 93263,city: 'Shafter', state_id: 5, user_id: user1.id, category_id: cat25.id)
# post25 = Post.create(title: 'I believe!', content: "I hope this works", startTime: DateTime.new(2019, 8, 23), location: "the corner of noneyah business", zip: 20816, city: 'Bethesda', state_id: 20, user_id: user1.id, category_id: cat1.id)
# post26 = Post.create(title: 'For Sale!', content: "For Real tho", startTime: DateTime.new(2019, 8, 25), location: "the corner of Giant Food Store", zip: 20816, city: 'Bethesda', state_id: 20, user_id: user1.id, category_id: cat15.id)
# post27 = Post.create(title: 'Selling Mah Beats', content: "Selling Beats", startTime: DateTime.new(2019, 8, 27), location: "Near Apple Market", zip: 93263, city: 'Shafter', state_id: 5, user_id: user1.id, category_id: cat11.id)
# post28 = Post.create(title: 'It is Yellow!!!', content: "Selling Corn", startTime: DateTime.new(2019, 8, 31), location: "Trader Joes", zip: 93263,city: 'Shafter', state_id: 5, user_id: user1.id, category_id: cat25.id)
# post29 = Post.create(title: 'I believe!', content: "I hope this works", startTime: DateTime.new(2019, 8, 23), location: "the corner of noneyah business", zip: 20816, city: 'Bethesda', state_id: 20, user_id: user1.id, category_id: cat1.id)
# post30 = Post.create(title: 'For Sale!', content: "For Real tho", startTime: DateTime.new(2019, 8, 25), location: "the corner of Giant Food Store", zip: 20816, city: 'Bethesda', state_id: 20, user_id: user1.id, category_id: cat15.id)
# post31 = Post.create(title: 'Selling Mah Beats', content: "Selling Beats", startTime: DateTime.new(2019, 8, 27), location: "Near Apple Market", zip: 93263, city: 'Shafter', state_id: 5, user_id: user1.id, category_id: cat11.id)
# post32 = Post.create(title: 'It is Yellow!!!', content: "Selling Corn", startTime: DateTime.new(2019, 8, 31), location: "Trader Joes", zip: 93263,city: 'Shafter', state_id: 5, user_id: user1.id, category_id: cat25.id)
# post33 = Post.create(title: 'I believe!', content: "I hope this works", startTime: DateTime.new(2019, 8, 23), location: "the corner of noneyah business", zip: 20816, city: 'Bethesda', state_id: 20, user_id: user1.id, category_id: cat1.id)
# post34 = Post.create(title: 'For Sale!', content: "For Real tho", startTime: DateTime.new(2019, 8, 25), location: "the corner of Giant Food Store", zip: 20816, city: 'Bethesda', state_id: 20, user_id: user1.id, category_id: cat15.id)
# post35 = Post.create(title: 'Selling Mah Beats', content: "Selling Beats", startTime: DateTime.new(2019, 8, 27), location: "Near Apple Market", zip: 93263, city: 'Shafter', state_id: 5, user_id: user1.id, category_id: cat11.id)
# post36 = Post.create(title: 'It is Yellow!!!', content: "Selling Corn", startTime: DateTime.new(2019, 8, 31), location: "Trader Joes", zip: 93263,city: 'Shafter', state_id: 5, user_id: user1.id, category_id: cat25.id)
# post37 = Post.create(title: 'I believe!', content: "I hope this works", startTime: DateTime.new(2019, 8, 23), location: "the corner of noneyah business", zip: 20816, city: 'Bethesda', state_id: 20, user_id: user1.id, category_id: cat1.id)
# post38= Post.create(title: 'For Sale!', content: "For Real tho", startTime: DateTime.new(2019, 8, 25), location: "the corner of Giant Food Store", zip: 20816, city: 'Bethesda', state_id: 20, user_id: user1.id, category_id: cat15.id)
# post39 = Post.create(title: 'Selling Mah Beats', content: "Selling Beats", startTime: DateTime.new(2019, 8, 27), location: "Near Apple Market", zip: 93263, city: 'Shafter', state_id: 5, user_id: user1.id, category_id: cat11.id)
# post40 = Post.create(title: 'It is Yellow!!!', content: "Selling Corn", startTime: DateTime.new(2019, 8, 31), location: "Trader Joes", zip: 93263,city: 'Shafter', state_id: 5, user_id: user1.id, category_id: cat25.id)



# post41 = Post.create(title: 'I believe!', content: "I hope this works", startTime: DateTime.new(2019, 8, 23), location: "the corner of noneyah business", zip: 20816, city: 'Bethesda', state_id: 20, user_id: user1.id, category_id: cat1.id)
# post42 = Post.create(title: 'For Sale!', content: "For Real tho", startTime: DateTime.new(2019, 8, 25), location: "the corner of Giant Food Store", zip: 20816, city: 'Bethesda', state_id: 20, user_id: user1.id, category_id: cat15.id)
# post43 = Post.create(title: 'Selling Mah Beats', content: "Selling Beats", startTime: DateTime.new(2019, 8, 27), location: "Near Apple Market", zip: 93263, city: 'Shafter', state_id: 5, user_id: user1.id, category_id: cat11.id)
# post44 = Post.create(title: 'It is Yellow!!!', content: "Selling Corn", startTime: DateTime.new(2019, 8, 31), location: "Trader Joes", zip: 93263,city: 'Shafter', state_id: 5, user_id: user1.id, category_id: cat25.id)
# post45 = Post.create(title: 'I believe!', content: "I hope this works", startTime: DateTime.new(2019, 8, 23), location: "the corner of noneyah business", zip: 20816, city: 'Bethesda', state_id: 20, user_id: user1.id, category_id: cat1.id)
# post46 = Post.create(title: 'For Sale!', content: "For Real tho", startTime: DateTime.new(2019, 8, 25), location: "the corner of Giant Food Store", zip: 20816, city: 'Bethesda', state_id: 20, user_id: user1.id, category_id: cat15.id)
# post47 = Post.create(title: 'Selling Mah Beats', content: "Selling Beats", startTime: DateTime.new(2019, 8, 27), location: "Near Apple Market", zip: 93263, city: 'Shafter', state_id: 5, user_id: user1.id, category_id: cat11.id)
# post48 = Post.create(title: 'It is Yellow!!!', content: "Selling Corn", startTime: DateTime.new(2019, 8, 31), location: "Trader Joes", zip: 93263,city: 'Shafter', state_id: 5, user_id: user1.id, category_id: cat25.id)
# post49 = Post.create(title: 'I believe!', content: "I hope this works", startTime: DateTime.new(2019, 8, 23), location: "the corner of noneyah business", zip: 20816, city: 'Bethesda', state_id: 20, user_id: user1.id, category_id: cat1.id)
# post50 = Post.create(title: 'For Sale!', content: "For Real tho", startTime: DateTime.new(2019, 8, 25), location: "the corner of Giant Food Store", zip: 20816, city: 'Bethesda', state_id: 20, user_id: user1.id, category_id: cat15.id)
att1 = Attend.create(user_id: user3.id, post_id: 20)
att2 = Attend.create(user_id: user3.id, post_id: 33)
att3 = Attend.create(user_id: user3.id, post_id: 40)
att4 = Attend.create(user_id: user3.id, post_id: 11)
att5 = Attend.create(user_id: user4.id, post_id: 12)
att6 = Attend.create(user_id: user4.id, post_id: 13)
att7 = Attend.create(user_id: user5.id, post_id: 15)
att8  = Attend.create(user_id: user5.id, post_id: 22)
att9 = Attend.create(user_id: user6.id, post_id: 44)
att10 = Attend.create(user_id: user6.id, post_id: 9)
