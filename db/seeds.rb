# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


lagoa = Restaurant.create!(name: "Bar Lagoa", address: "Rua Canario", category: "french", phone: 33333333 )
Review.create(rating: 5, restaurant: lagoa  )

caca = Restaurant.create!(name: "Caca Food", address: "Rua Bento", category: "belgian")
Review.create(rating: 2, restaurant: caca  )

