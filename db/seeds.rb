require 'faker'

puts "creating restaurants..."
30.times do
  Restaurant.create!(
    name: Faker::Hipster.word,
    address: Faker::Address.city,
    phone_number: Faker::PhoneNumber.phone_number,
    category: Restaurant::CATEGORIES.sample
  )
end

puts "Finished!"
