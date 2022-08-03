# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

User.new(email:"admin@example.com", phone:1234567, address:"adress example", username: "admin", first_name:"Jhon", last_name:"Smith", password:12345789, user_type: 0).save
User.new(email:"user@example.com", phone:1234567, address:"adress example", username: "user_n", first_name:"Jhon", last_name:"Normal", password:12345789, user_type: 2).save

%w(FastFood Entry Beberage Fries Meet).each { |f| FoodType.new(name:"#{f}").save }

FoodDish.new(name:"Fries potatos", cost:2355, ingredients:"Potatos, cheese", food_type_id:1).save

Menu.new(food_dish_id: 1).save

Restaurant.new(menu_id: 1, owner_id: 2).save

Vote.new(user_id:1, food_dish_id:1).save
Vote.new(user_id:2, food_dish_id:1).save