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

art_sample_urls = [
  "http://i.imgur.com/zTbh6K1.jpg","http://i.imgur.com/CNhnRs2.jpg","http://i.imgur.com/8wI6SfF.jpg",
  "http://i.imgur.com/Vh3IvBP.jpg","http://i.imgur.com/turgtvx.png","http://i.imgur.com/xWvpKfa.jpg",
  "http://i.imgur.com/9nTcR33.jpg","http://i.imgur.com/wqtOpuV.jpg","http://i.imgur.com/cE5sKbT.jpg",
  "http://i.imgur.com/dGf98M4.jpg","http://i.imgur.com/nx0N6Xx.jpg","http://i.imgur.com/cGB1SN8.jpg",
  "http://i.imgur.com/x0Y9nj9.jpg", "http://i.imgur.com/18t3DjG.png", "http://i.imgur.com/hR1V2XC.jpg", "http://i.imgur.com/Oo8nwaR.jpg", "http://i.imgur.com/ABtZ6B6.jpg", "http://i.imgur.com/Dp465Eg.jpg", "http://i.imgur.com/gbGWT0b.jpg", "http://i.imgur.com/WFCKELb.jpg", "http://i.imgur.com/mnfNuBd.jpg", "http://i.imgur.com/2I8VMnK.jpg", "http://i.imgur.com/VPqB3KR.jpg", "http://i.imgur.com/T5nWVVT.jpg", "http://i.imgur.com/tw4it4x.jpg", "http://i.imgur.com/yWf7Nkh.jpg", "http://i.imgur.com/2Scem0Q.jpg", "http://i.imgur.com/j8iWe5b.jpg", "http://i.imgur.com/NXerOj2.jpg", "http://i.imgur.com/O5cM6OQ.jpg",
  "http://i.imgur.com/Dd2Jrbr.jpg", "http://i.imgur.com/tAPSSEX.jpg", "http://i.imgur.com/Ij7jx8J.jpg", "http://i.imgur.com/pkNSFCH.jpg", "http://i.imgur.com/X9HgyX9.jpg", "http://i.imgur.com/94Gukbz.jpg", "http://i.imgur.com/UH0DXux.jpg", "http://i.imgur.com/rYpPjJH.jpg", "http://i.imgur.com/BlMKQjB.jpg", "http://i.imgur.com/k7mlMIs.jpg", "http://i.imgur.com/M3ZLeno.jpg", "http://i.imgur.com/umJPVpt.jpg",
  "http://i.imgur.com/7AjTWgM.jpg", "http://i.imgur.com/zhb6piM.jpg", "http://i.imgur.com/1jHtRWx.jpg", "http://i.imgur.com/6mCsq4v.jpg", "http://i.imgur.com/p3ExPkT.jpg", "http://i.imgur.com/EC7rAxk.jpg", "http://i.imgur.com/jZw1AQV.jpg", "http://i.imgur.com/akLmeRR.jpg", "http://i.imgur.com/mb6osGY.jpg", "http://i.imgur.com/9bV2KUW.jpg", "http://i.imgur.com/niLmV6J.jpg", "http://i.imgur.com/GPHL0AK.jpg", "http://i.imgur.com/3KUaBDo.jpg", "http://i.imgur.com/swushmb.jpg", "http://i.imgur.com/kyRy02T.jpg",
  "http://i.imgur.com/nMTW8o2.jpg", "http://i.imgur.com/ZL0O2p9.jpg", "http://i.imgur.com/kHvAlcQ.jpg", "http://i.imgur.com/xq2KAPd.jpg", "http://i.imgur.com/q2SMEBk.jpg", "http://i.imgur.com/UCNudZX.jpg",
  "http://i.imgur.com/GhW5YoK.jpg", "http://i.imgur.com/1PrBZ2C.jpg", "http://i.imgur.com/T2gfjSS.jpg", "http://i.imgur.com/iKmhtcw.jpg", "http://i.imgur.com/w3y3YDm.jpg", "http://i.imgur.com/lacwBgT.jpg", "http://i.imgur.com/HtILHm4.jpg", "http://i.imgur.com/FC1YUzU.jpg", "http://i.imgur.com/Jc37EDU.jpg",
  "http://i.imgur.com/BE7gQCd.jpg", "http://i.imgur.com/luLzITR.jpg", "http://i.imgur.com/75s6UPs.jpg", "http://i.imgur.com/kQq0fLu.jpg", "http://i.imgur.com/T6thndj.jpg", "http://i.imgur.com/fVBavtr.jpg", "http://i.imgur.com/S8Q2BB4.jpg?1", "http://i.imgur.com/L0mypJ5.jpg?1", "http://i.imgur.com/mX3RsjP.jpg",
  "http://i.imgur.com/U3F87ca.jpg", "http://i.imgur.com/aBO2XCX.jpg"

]

category_list = [
  "Drawing", "Painting", "Sculpture", "Ceramics", "Photography",
  "Conceptual", "Architecture", "Performance", "Taxidermy",
  "Mixed Media",  "Tapestry", "Wood Carving", "Print", "Graffiti",
  "Illuminated Manuscript", "Varieties of Glass", "Lithography",
  "Charcoal", "Computer Art", "Digital", "Hotel Art", "Water Closet",
]
category_list.each {|cat| Category.create(name: cat)}

19.times {
  random_name = "#{Faker::Hipster.word}#{SecureRandom.random_number(999)}"
  User.create(
    username: random_name,
    password: "1",
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    location: Faker::Pokemon.location,
    bio: Faker::Hipster.paragraph(2,true,3)
  )
}

count = 0
random_art = art_sample_urls.shuffle.shuffle
random_art.count.times {
  random_user_id = SecureRandom.random_number(User.last.id) + 1
  random_category_id = SecureRandom.random_number(Category.last.id) + 1
  random_price = SecureRandom.random_number(10000)/100.00
  Art.create(
    title: Faker::Lorem.sentence(2,true,2),
    price: 10 + random_price,
    description: Faker::Hipster.paragraph(2,true,1),
    user_id: random_user_id,
    category_id: random_category_id,
    image_url: random_art[count]
  )
  count += 1
}

500.times {
  random_user_id = SecureRandom.random_number(User.last.id) + 1
  random_art_id = SecureRandom.random_number(Art.last.id) + 1
  Comment.create(
    content: Faker::Hipster.paragraph(1,true,9),
    user_id: random_user_id,
    art_id: random_art_id
  )
}
