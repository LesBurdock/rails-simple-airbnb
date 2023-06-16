# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

Flat.destroy_all


flat1 = Flat.create(
    name: 'Light and Bright',
    address: Faker::Address.full_address,
    description: 'a pretty and warm home with lots of space and comfort',
    price_per_night: Faker::Number.decimal(l_digits: 2),
    number_of_guests: Faker::Number.between(from: 1, to: 5),
    pic_url: ["https://images.unsplash.com/photo-1618220179428-22790b461013?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=3027&q=80",
      "https://images.pexels.com/photos/2251247/pexels-photo-2251247.jpeg?auto=compress&cs=tinysrgb&w=1200",
      "https://images.pexels.com/photos/1571460/pexels-photo-1571460.jpeg?auto=compress&cs=tinysrgb&w=1200"]
  )

  Flat.create( 
    name: 'Family Home', 
    address: Faker::Address.full_address, 
    description: 'Green field and beautiful animals. Comfortable home with 5 beds', 
    price_per_night: Faker::Number.decimal(l_digits: 4), 
    number_of_guests: Faker::Number.between(from: 1, to: 5), 
    pic_url: ["https://images.pexels.com/photos/1438248/pexels-photo-1438248.jpeg?auto=compress&cs=tinysrgb&w=1200",
      "https://images.pexels.com/photos/1080696/pexels-photo-1080696.jpeg?auto=compress&cs=tinysrgb&w=1200",
      "https://images.pexels.com/photos/5644353/pexels-photo-5644353.jpeg?auto=compress&cs=tinysrgb&w=1200"]
  )
  Flat.create(
    name: 'Outdoor oasis',
    address: Faker::Address.full_address,
    description: 'a pretty and warm home with lots of space and comfort',
    price_per_night: Faker::Number.decimal(l_digits: 3),
    number_of_guests: Faker::Number.between(from: 1, to: 5),
    pic_url: ["https://images.pexels.com/photos/2980955/pexels-photo-2980955.jpeg?auto=compress&cs=tinysrgb&w=1200",
      "https://images.pexels.com/photos/447592/pexels-photo-447592.jpeg?auto=compress&cs=tinysrgb&w=1200",
      "https://images.pexels.com/photos/4352247/pexels-photo-4352247.jpeg?auto=compress&cs=tinysrgb&w=1200"]
    )
    Flat.create( 
      name: 'Family Home', address: Faker::Address.full_address, description: 'Green field and beautiful animals. Comfortable home with 5 beds', 
      price_per_night: Faker::Number.decimal(l_digits: 2), number_of_guests: Faker::Number.between(from: 1, to: 5), 
      pic_url: ["https://images.pexels.com/photos/1862402/pexels-photo-1862402.jpeg?auto=compress&cs=tinysrgb&w=1200",
        "https://images.pexels.com/photos/1648768/pexels-photo-1648768.jpeg?auto=compress&cs=tinysrgb&w=1200",
        "https://images.pexels.com/photos/1034584/pexels-photo-1034584.jpeg?auto=compress&cs=tinysrgb&w=1200"]
    )
    Flat.create( 
      name: 'Modern Luxury', 
      address: Faker::Address.full_address, 
      description: 'Green field and beautiful animals. Comfotable home with 5 beds', 
      price_per_night: Faker::Number.decimal(l_digits: 3), 
      number_of_guests: Faker::Number.between(from: 1, to: 5), 
      pic_url:["https://images.pexels.com/photos/2480608/pexels-photo-2480608.jpeg?auto=compress&cs=tinysrgb&w=1200",
        "https://images.pexels.com/photos/15201943/pexels-photo-15201943.jpeg?auto=compress&cs=tinysrgb&w=1200",
        "https://images.pexels.com/photos/261124/pexels-photo-261124.jpeg?auto=compress&cs=tinysrgb&w=1200"])
    
      Flat.create(
      name: 'Country Home',
      address: Faker::Address.full_address,
      description: 'Green field and beautiful animals. Comfortable home with 5 beds',
      price_per_night: Faker::Number.decimal(l_digits: 2),
      number_of_guests: Faker::Number.between(from: 1, to: 5),
      pic_url:["https://images.pexels.com/photos/1795508/pexels-photo-1795508.jpeg?auto=compress&cs=tinysrgb&w=1200",
        "https://images.pexels.com/photos/13945431/pexels-photo-13945431.jpeg?auto=compress&cs=tinysrgb&w=1200",
        "https://images.pexels.com/photos/4617762/pexels-photo-4617762.jpeg?auto=compress&cs=tinysrgb&w=1200"]
    )
    Flat.create( name: 'Country Home', address: Faker::Address.full_address, description: 'Green field and beautiful animals. Comfotable home with 5 beds', 
      price_per_night: Faker::Number.decimal(l_digits: 4), 
      number_of_guests: Faker::Number.between(from: 1, to: 5), 
      pic_url: ["https://images.pexels.com/photos/314937/pexels-photo-314937.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
        "https://images.unsplash.com/photo-1586023492125-27b2c045efd7?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1558&q=80",
        "https://images.unsplash.com/photo-1621506821957-1b50ab7787a4?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=987&q=80"])
    Flat.create(
      name: 'Island Beach house',
      address: Faker::Address.full_address,
      description: 'right on the beach with luxurious fittings',
      price_per_night: Faker::Number.decimal(l_digits: 3),
      number_of_guests: Faker::Number.between(from: 1, to: 5),
      pic_url:["https://images.pexels.com/photos/2128329/pexels-photo-2128329.jpeg?auto=compress&cs=tinysrgb&w=1200",
        "https://images.pexels.com/photos/12051126/pexels-photo-12051126.jpeg?auto=compress&cs=tinysrgb&w=1200",
        "https://images.pexels.com/photos/5439496/pexels-photo-5439496.jpeg?auto=compress&cs=tinysrgb&w=1200"]
      )
      Flat.create(
        name: 'Scandinavian comfort',
        address: Faker::Address.full_address,
        description: 'traditional home with style. 5 bathrooms',
        price_per_night: Faker::Number.decimal(l_digits: 2),
        number_of_guests: Faker::Number.between(from: 1, to: 5),
        pic_url:["https://images.pexels.com/photos/1212053/pexels-photo-1212053.jpeg?auto=compress&cs=tinysrgb&w=1200",
          "https://images.pexels.com/photos/7404941/pexels-photo-7404941.jpeg?auto=compress&cs=tinysrgb&w=1200",
          "https://images.pexels.com/photos/2724749/pexels-photo-2724749.jpeg?auto=compress&cs=tinysrgb&w=1200"]
        )