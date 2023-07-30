puts 'Cleaning database'
Restaurant.destroy_all

puts 'Loading restaurants'

categories = %w[chinese italian japanese french belgian]

10.times do
  restaurant = Restaurant.new(
    name: Faker::Restaurant.name,
    address: Faker::Address.street_name,
    phone_number: Faker::PhoneNumber.phone_number,
    category: categories.sample
  )
end
