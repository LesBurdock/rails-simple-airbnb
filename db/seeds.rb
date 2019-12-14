# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

Flat.destroy_all

10.times do |flat|
  Flat.create!(
    name: 'Light and Bright',
    address: Faker::Address.full_address,
    description: 'a pretty and warm home with lots of space and comfort',
    price_per_night: Faker::Number.decimal(l_digits: 2),
    number_of_guests: Faker::Number.between(from: 1, to: 5),
    pic_url: Faker::LoremFlickr.image
    )
end
