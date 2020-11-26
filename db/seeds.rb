# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

LineItem.destroy_all
Cart.destroy_all
Product.destroy_all

products = []
lineitems = []
carts = []

##########################
# Admin User
##########################

    User.create!(
        first_name: "Admin",
        last_name: "Admin",
        email: "admin-chaton@yopmail.com",
        password: 'azerty',
        is_admin: true
    )

#################################
10.times do
products << Product.create(title: Faker::Creature::Cat.name, description: Faker::Lorem.paragraph(sentence_count: 3), price: Faker::Commerce.price)
end

products[0].image.attach(io: File.open('app/assets/images/chaton1.jpg'), filename: 'chaton1.jpg', content_type: 'image/jpg')
products[1].image.attach(io: File.open('app/assets/images/chaton2.jpg'), filename: 'chaton2.jpg', content_type: 'image/jpg')
products[2].image.attach(io: File.open('app/assets/images/chaton3.jpg'), filename: 'chaton3.jpg', content_type: 'image/jpg')
products[3].image.attach(io: File.open('app/assets/images/chaton4.jpg'), filename: 'chaton4.jpg', content_type: 'image/jpg')
products[4].image.attach(io: File.open('app/assets/images/chaton5.jpg'), filename: 'chaton5.jpg', content_type: 'image/jpg')
products[5].image.attach(io: File.open('app/assets/images/chaton6.jpg'), filename: 'chaton6.jpg', content_type: 'image/jpg')
products[6].image.attach(io: File.open('app/assets/images/chaton7.jpg'), filename: 'chaton7.jpg', content_type: 'image/jpg')
products[7].image.attach(io: File.open('app/assets/images/chaton8.jpg'), filename: 'chaton8.jpg', content_type: 'image/jpg')
products[8].image.attach(io: File.open('app/assets/images/chaton9.jpg'), filename: 'chaton9.jpg', content_type: 'image/jpg')
products[9].image.attach(io: File.open('app/assets/images/chaton10.jpg'), filename: 'chaton10.jpg', content_type: 'image/jpg')