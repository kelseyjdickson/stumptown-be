# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

OrderItem.destroy_all
User.destroy_all
Order.destroy_all
Item.destroy_all

puts "seeding User"
kelsey = User.create(username: "Kelsey", password: "yoyo")
puts "done seeding user"

puts "seeding Order"

order1 = Order.create(paid: false, total: 0)
order2 = Order.create(paid: false, total: 0)
order3 = Order.create(paid: false, total: 0)

puts "done seeding Order"

puts "seeding Item"

item1 = Item.create(name:"12 oz House Blend", price: 15.00, image_url:"https://res.cloudinary.com/roastcollective/image/upload/h_1600,w_1600,f_jpg,fl_progressive:steep,q_auto:good/v1/products/STU/TRD00014_STU_HouseBlendCandiedMilkChocolate_Main.png")
item2 = Item.create(name:"12 oz Holler Mountain", price: 16.00, image_url:"https://res.cloudinary.com/roastcollective/image/upload/h_1600,w_1600,f_jpg,fl_progressive:steep,q_auto:good/v1/products/STU/TRD00014_STU_HollerMountain_Main.png")
item3 = Item.create(name:"12 oz Homestead", price:11.99, image_url:"https://res.cloudinary.com/roastcollective/image/upload/h_1600,w_1600,f_jpg,fl_progressive:steep,q_auto:good/v1/products/STU/049_TRD000014_STU_Homestead_Main_0693.png")
item4 = Item.create(name:"12 oz Hundred Mile", price:11.99, image_url:"https://res.cloudinary.com/roastcollective/image/upload/h_1600,w_1600,f_jpg,fl_progressive:steep,q_auto:good/v1/products/STU/046_TRD000014_STU_Hundred_Mile_Main_0111.png")
item5 = Item.create(name:"12 oz Trapper Creek Decaf", price:16.00, image_url:"https://res.cloudinary.com/roastcollective/image/upload/h_1600,w_1600,f_jpg,fl_progressive:steep,q_auto:good/v1/products/STU/050_TRD000014_STU_Trapper_Creek_Main_0436.png")
item6 = Item.create(name:"12 oz French Roast", price:15.00, image_url:"https://res.cloudinary.com/roastcollective/image/upload/h_1600,w_1600,f_jpg,fl_progressive:steep,q_auto:good/v1542234254/solidus/tgd3mqkxd85drdm5zuwc.png")
item7 = Item.create(name:"12 oz Founders Blend", price:15.00, image_url:"https://res.cloudinary.com/roastcollective/image/upload/h_1600,w_1600,f_jpg,fl_progressive:steep,q_auto:good/v1/products/STU/045_TRD000014_STU_Founders_Main_0114.png")
item8 = Item.create(name:"12 oz Slay Ride", price:16.00, image_url:"https://www.gtn9.com/upload/201710/30/201710301521549873.jpg")
item9 = Item.create(name:"12 oz Churupampa", price:16.00, image_url:"https://www.gtn9.com/upload/201710/30/201710301521542529.jpg")

puts 'done seeding item'

puts 'seeding Order Item'

OrderItem.create(qty: 1, order: order1, item: item1)
OrderItem.create(qty: 5, order: order2, item: item2)
OrderItem.create(qty: 1, order: order3, item: item3) 

puts'done!'


