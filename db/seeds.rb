# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
puts 'Deleting restaurants...'
Restaurant.destroy_all

puts 'Creating restaurants...'
  rest_1 = Restaurant.new(
    name: "My restaurant",
    address: "22 Long Road, London",
    phone_number: "0203334446",
    category: "Fast food"
  )
  rest_1.save!

  rest_2 = Restaurant.new(
    name: "My second restaurant",
    address: "11 Short Road, London",
    phone_number: "0453334446",
    category: "Slow food"
  )
  rest_2.save!

  require 'faker'

  review_1 = Review.new(
    content: "Not very good",
    rating: "2"
  )
  review_1.save!

  review_2 = Review.new(
    content: "Amazing, like home cooking!",
    rating: "5"
  )
  review_2.save!
end
puts 'Finished!'
