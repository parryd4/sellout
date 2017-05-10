# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

User.create(
  username: "dp",
  password: "1",
  first_name: "Dan",
  last_name: "P",
  location: "NJ",
  bio: "He who dares wins, and I dared to merge with master"
)


19.times {
  random_name = "#{Faker::Hipster.word}#{SecureRandom.random_number(999)}"
  User.create(
    username: random_name,
    password: "1",
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    location: 'Manhattan',
    bio: Faker::Hipster.paragraph(2,true,3)
  )
}

50.times {
  random_user_id = SecureRandom.random_number(User.last.id) + 1
  random_category_id = SecureRandom.random_number(Category.last.id) + 1
  random_price = SecureRandom.random_number(10000)/100.00
  Art.create(
    title: Faker::Lorem.sentence(2,true,2),
    price: 10 + random_price,
    description: Faker::Hipster.paragraph(2,true,0),
    user_id: random_user_id,
    category_id: random_category_id
  )
}

500.times {
  random_user_id = SecureRandom.random_number(User.last.id) + 1
  random_art_id = SecureRandom.random_number(Art.last.id) + 1
  Comment.create(
    content: Faker::Hipster.paragraph(0,true,10),
    user_id: random_user_id,
    art_id: random_art_id
  )
}
