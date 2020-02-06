# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

city_id = []

5.times do
  city = City.create!(name: Faker::Address.city)
  puts "Création d'une ville"
  city_id << city.id
end

dog_sitter_id = []
20.times do
  dog_sitter = DogSitter.create!(name: Faker::Name.first_name, city_id: city_id.sample )
  puts "Création d'un Dogsitter"
  dog_sitter_id << dog_sitter.id
end
dog_id = []
20.times do
  dog = Dog.create!(name: Faker::Name.first_name, city_id: city_id.sample)
  puts "Création d'un chien"
  dog_id << dog.id
end

5.times do
  stroll = Stroll.create!(dog_sitter_id: dog_sitter_id.sample,dog_id: dog_id.sample )
  puts "Création d'une promenade"
end