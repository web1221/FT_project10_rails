# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


#
Product.destroy_all
Review.destroy_all
# 50.times do |index|
#   Product.create!(name: Faker::Games::Witcher.monster,
#     cost: Faker::Number.decimal(r_digits: 2),
#     country_of_origin: Faker::WorldCup.team)
#     # binding.pry
    300.times do |index|
      50.times do |index|
        Product.create!(name: Faker::Games::Witcher.monster,
          cost: Faker::Number.decimal(r_digits: 2),
          country_of_origin: Faker::WorldCup.team)
      Review.create!(author: Faker::TvShows::BojackHorseman.character,
        content_body: Faker::Hipster.paragraph(sentence_count: 3), rating: Faker::Number.within(range: 1..5),
        product_id: Product.ids)
      end
    end


    p "Created #{Review.count} reviews, and #{Product.count}"
