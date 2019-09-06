# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Product.destroy_all

NUMBER_ITERATIONS = 1000

NUMBER_ITERATIONS.times do
    Product.create(
        title: Faker::Vehicle.year.to_s + " " + Faker::Vehicle.manufacture + " " + Faker::Vehicle.model,
        description: Faker::Vehicle.standard_specs.join(", "),
        price: rand(1_000_000)
    )
end

puts Cowsay.say("Generated #{Product.count} products", :stegosaurus)
