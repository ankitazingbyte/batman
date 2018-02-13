# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Restaurant.create(name:"shreeleela",address: "sapna sangeeta", phone: "73192897", user_id: 1)
Restaurant.create(name:"crown place",address: "geeta bhawan", phone: "73146546", user_id: 1)
Restaurant.create(name:"shreemaya",address: "madhu meelan", phone: "73168767", user_id: 1)
Category.create(name:"vag", restaurant_id: "1")
Category.create(name:"vag", restaurant_id: "2")
Category.create(name:"vag", restaurant_id: "3")
Category.create(name:"non-vag", restaurant_id: "1")
Category.create(name:"non-vag", restaurant_id: "2")
Category.create(name:"non-vag", restaurant_id: "3")
Subcategory.create(name:"paneer",category_id: "1")
Subcategory.create(name:"paneer",category_id: "2")
Subcategory.create(name:"paneer",category_id: "3")
Subcategory.create(name:"chicken",category_id: "4")
Subcategory.create(name:"chicken",category_id: "5")
Subcategory.create(name:"chicken",category_id: "6")
Product.delete_all
Product.create(name: "kadai paneer", price: "200",subcategory_id: "1")
Product.create(name: "kadai paneer", price: "200",subcategory_id: "2")
Product.create(name: "kadai paneer", price: "200",subcategory_id: "3")
Product.create(name: "roasted chicken", price: "480",subcategory_id: "4")
Product.create(name: "roasted chicken", price: "480",subcategory_id: "5")
Product.create(name: "roasted chicken", price: "480",subcategory_id: "6")
OrderStatus.delete_all
OrderStatus.create! id: 1, name: "In Progress"
OrderStatus.create! id: 2, name: "Placed"
OrderStatus.create! id: 3, name: "Shipped"
OrderStatus.create! id: 4, name: "Cancelled"
Rating.create(number: "4.5", restaurant_id: 1)
Rating.create(number: "3.5", restaurant_id: 2)
Rating.create(number: "2.5", restaurant_id: 3)