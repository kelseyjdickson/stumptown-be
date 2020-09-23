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

item1 = Item.create(name:"12oz House Blend", price: 15.00, image_url:"https://res.cloudinary.com/roastcollective/image/upload/h_1600,w_1600,f_jpg,fl_progressive:steep,q_auto:good/v1/products/STU/TRD00014_STU_HouseBlendCandiedMilkChocolate_Main.png",description:"Our House Blend is comprised of some of our best seasonal single origin coffees, the components rotate so we can always bring it to you at peak flavor.",bean:"Whole Bean")
item2 = Item.create(name:"12oz Holler Mountain", price: 16.00, image_url:"https://res.cloudinary.com/roastcollective/image/upload/h_1600,w_1600,f_jpg,fl_progressive:steep,q_auto:good/v1/products/STU/TRD00014_STU_HollerMountain_Main.png",description:"A versatile and full-bodied blend, Holler Mountain is our signature organic blend that has been with us since the beginning. A hometown favorite.",bean:"Whole Bean")
item3 = Item.create(name:"12oz Homestead", price:16.00, image_url:"https://res.cloudinary.com/roastcollective/image/upload/h_1600,w_1600,f_jpg,fl_progressive:steep,q_auto:good/v1/products/STU/049_TRD000014_STU_Homestead_Main_0693.png",description:"Homestead is a light, seasonal, and balanced cup blending Stumptown's finest Direct Trade coffees. Sweet & delicious, this is one to write home about.",bean:"Whole Bean")
item4 = Item.create(name:"12oz Hundred Mile", price:15.00, image_url:"https://res.cloudinary.com/roastcollective/image/upload/h_1600,w_1600,f_jpg,fl_progressive:steep,q_auto:good/v1/products/STU/046_TRD000014_STU_Hundred_Mile_Main_0111.png",description:"Sweet & hearty, Hundred Mile is the classic breakfast blend. Robust enough to drink black & stands up well with milk so you can enjoy it your way.",bean:"Whole Bean")
item5 = Item.create(name:"12oz Trapper Creek Decaf", price:16.00, image_url:"https://res.cloudinary.com/roastcollective/image/upload/h_1600,w_1600,f_jpg,fl_progressive:steep,q_auto:good/v1/products/STU/050_TRD000014_STU_Trapper_Creek_Main_0436.png",description:"Finally, a decaf that holds its own. Recent updates to the organic Swiss Water decaf process have allowed for unparalleled flavor and cup quality.",bean:"Whole Bean")
item6 = Item.create(name:"12oz French Roast", price:15.00, image_url:"https://res.cloudinary.com/roastcollective/image/upload/h_1600,w_1600,f_jpg,fl_progressive:steep,q_auto:good/v1542234254/solidus/tgd3mqkxd85drdm5zuwc.png",description:"You have never tasted a dark roast quite like this. This toasty blend redefines what a dark roast can be – big and smoky, but never burnt.",bean:"Organic Whole Bean")
item7 = Item.create(name:"12oz Founders Blend", price:15.00, image_url:"https://res.cloudinary.com/roastcollective/image/upload/h_1600,w_1600,f_jpg,fl_progressive:steep,q_auto:good/v1/products/STU/045_TRD000014_STU_Founders_Main_0114.png",description:"Everything you love about a classic, nostalgic cup of comfort shine in this sweet, easy to love blend - it's just elevated beyond your wildest dreams.",bean:"Whole Bean")
item8 = Item.create(name:"12oz Slay Ride", price:16.00, image_url:"https://www.gtn9.com/upload/201710/30/201710301521549873.jpg",description:"Oh, what fun it is to ride and sing a slaying song tonight",bean:"Whole Bean")


puts 'done seeding item'

puts 'seeding Order Item'

OrderItem.create(qty: 1, order: order1, item: item1)
OrderItem.create(qty: 1, order: order2, item: item2)
OrderItem.create(qty: 1, order: order3, item: item3) 

puts'done!'


