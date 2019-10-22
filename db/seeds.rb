# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user = User.first

places = [
  {
    name: "Home",
    number: "27",
    street: "Nabarlek Drive",
    suburb: "Worongary",
    state: "Queensland",
    zip: "4213"
  },
  {
    name: "Coder Academy",
    number: "60",
    street: "Gloucester Street",
    suburb: "Spring Hill",
    state: "Queensland",
    zip: "4000"
  }
]
user.places.destroy_all
user.places.create(places)