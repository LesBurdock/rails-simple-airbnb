# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

Flat.destroy_all


flats = Flat.create(
    name: 'Light and Bright',
    address: Faker::Address.full_address,
    description: 'a pretty and warm home with lots of space and comfort',
    price_per_night: Faker::Number.decimal(l_digits: 2),
    number_of_guests: Faker::Number.between(from: 1, to: 5),
    pic_url: "https://images.unsplash.com/photo-1586023492125-27b2c045efd7?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1558&q=80"
  )

  Flat.create( 
    name: 'Family Home', 
    address: Faker::Address.full_address, 
    description: 'Green field and beautiful animals. Comfotable home with 5 beds', 
    price_per_night: Faker::Number.decimal(l_digits: 4), 
    number_of_guests: Faker::Number.between(from: 1, to: 5), 
    pic_url: "https://images.unsplash.com/photo-1618220179428-22790b461013?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=3027&q=80"
  )

  Flat.create(
    name: 'Outdoor oasis',
    address: Faker::Address.full_address,
    description: 'a pretty and warm home with lots of space and comfort',
    price_per_night: Faker::Number.decimal(l_digits: 3),
    number_of_guests: Faker::Number.between(from: 1, to: 5),
    pic_url: "https://images.unsplash.com/photo-1621506821957-1b50ab7787a4?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=987&q=80"
    )
    Flat.create( 
      name: 'Family Home', address: Faker::Address.full_address, description: 'Green field and beautiful animals. Comfortable home with 5 beds', 
      price_per_night: Faker::Number.decimal(l_digits: 2), number_of_guests: Faker::Number.between(from: 1, to: 5), 
      pic_url: "https://images.unsplash.com/photo-1618220179428-22790b461013?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=3027&q=80"
    )
    Flat.create( 
      name: 'Modern Luxury', 
      address: Faker::Address.full_address, 
      description: 'Green field and beautiful animals. Comfotable home with 5 beds', 
      price_per_night: Faker::Number.decimal(l_digits: 3), number_of_guests: 
      Faker::Number.between(from: 1, to: 5), 
      pic_url: "https://images.unsplash.com/photo-1600210492493-0946911123ea?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1974&q=80")
    Flat.create(
      name: 'Country Home',
      address: Faker::Address.full_address,
      description: 'Green field and beautiful animals. Comfortable home with 5 beds',
      price_per_night: Faker::Number.decimal(l_digits: 2),
      number_of_guests: Faker::Number.between(from: 1, to: 5),
      pic_url: "https://images.unsplash.com/photo-1570129477492-45c003edd2be?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2070&q=80"
    )
    Flat.create( name: 'Country Home', address: Faker::Address.full_address, description: 'Green field and beautiful animals. Comfotable home with 5 beds', price_per_night: Faker::Number.decimal(l_digits: 4), number_of_guests: Faker::Number.between(from: 1, to: 5), pic_url: "https://images.unsplash.com/photo-1570129477492-45c003edd2be?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2070&q=80")
    Flat.create(
      name: 'Island Beach house',
      address: Faker::Address.full_address,
      description: 'right on the beach with luxurious fittings',
      price_per_night: Faker::Number.decimal(l_digits: 3),
      number_of_guests: Faker::Number.between(from: 1, to: 5),
      pic_url: "https://images.unsplash.com/photo-1499793983690-e29da59ef1c2?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2070&q=80"
      )
      Flat.create(
        name: 'Scandinavian comfort',
        address: Faker::Address.full_address,
        description: 'traditional home with style. 5 bathrooms',
        price_per_night: Faker::Number.decimal(l_digits: 2),
        number_of_guests: Faker::Number.between(from: 1, to: 5),
        pic_url: "https://images.unsplash.com/photo-1480074568708-e7b720bb3f09?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2074&q=80"
        )