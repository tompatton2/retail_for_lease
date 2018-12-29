require 'faker'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Creating 100 fake Properties...'
100.times do
  property = Property.new(
    header:    Faker::Lorem.paragraph,
    description: Faker::Lorem.paragraph,
    building_type:  ['Retail','Residential','Commercial'].shuffle.first,
    building_class:  ['A','B','C'].shuffle.first,
    year_built:  rand(1900..2018),
    unit_type:  Faker::Lorem.word,
    street:  Faker::Address.street_address,
    zipcode:  [95030,65030,92130,92130].shuffle.first,
    city:  Faker::Address.city,
    state:  Faker::Address.state_abbr,
    country:  Faker::Address.country_code,
  )
  property.save!
end
puts 'Finished!'
