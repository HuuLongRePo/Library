# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


require_relative '../lib/populator_fix.rb'

Book.populate 10 do |u|
    u.title = Faker::Book.title
    u.price = Faker::Number.within(range: 10000..110000)
    u.subject_id = Faker::Number.within(range: 1..5)
    u.description = Faker::Quote.famous_last_words
  end
