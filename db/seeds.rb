# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

<<<<<<< HEAD
=======

>>>>>>> develop
require 'faker'

LineItem.destroy_all
Cart.destroy_all
User.destroy_all
Product.destroy_all

products = []
lineitems = []
carts = []
users = []

<<<<<<< HEAD
10.times do
products << Product.create(title: Faker::Creature::Cat.name, description: Faker::Lorem.paragraph(sentence_count: 2), price: Faker::Commerce.price)
end

3.times do
users << User.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, email: Faker::Internet.email, password: Faker::Internet.password)
end

2.times do
carts << Cart.create(user: users.sample)
end

5.times do |index|
lineitems << LineItem.create(cart: carts.sample, product: products.sample, quantity: rand(1..10))
=======
10.times do 
    products << Product.create(title: Faker::Creature::Cat.name, description: Faker::Lorem.paragraph(sentence_count: 2), price: Faker::Commerce.price)
end

3.times do 
    users << User.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, email: Faker::Internet.email, password: Faker::Internet.password)
end

2.times do 
    carts << Cart.create(user: users.sample)
end

5.times do |index|
    lineitems << LineItem.create(cart: carts.sample, product: products.sample, quantity: rand(1..10))
>>>>>>> develop
end