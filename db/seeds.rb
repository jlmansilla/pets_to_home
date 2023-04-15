# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require 'faker'

10.times do
  User.create!(
    name: Faker::Name.name,
    email: Faker::Internet.email,
    password: 'password'
  )
end
  
10.times do
  City.create!(
    name: Faker::Address.city
  )
end
  
10.times do
  Pet.create!(
    name: Faker::Creature::Animal.name
  )
end
  
cities = City.all
users = User.all
  
20.times do
  kindergarten = Kindergarten.create!(
    name: Faker::Company.name,
    description: Faker::Lorem.paragraph,
    photo: Faker::LoremPixel.image,
    city: cities.sample,
    price: Faker::Commerce.price(range: 50..500),
    phone: Faker::PhoneNumber.phone_number,
    user: users.sample
  )
end
  
pets = Pet.all
kindergartens = Kindergarten.all

50.times do
  kindergarten_pet = KindergartenPet.create!(
    pet: pets.sample,
    kindergarten: kindergartens.sample,
    compatible: Faker::Boolean.boolean(true_ratio: 0.7)
  )
end
  