# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts 'Cleaning database...'
Bookmark.destroy_all
List.destroy_all
Movie.destroy_all

puts 'Creating 10 fake movies ...'

10.times do
  movie = Movie.new(
    title: Faker::Movie.title,
    overview: Faker::Movie.quote,
    poster_url: Faker::Internet.url,
    rating:  rand(0.0...10.0).round(1)
  )
  movie.save!
end

puts 'Creating fake lists ...'
List.create(name: "Fiction")
List.create(name:"Romance")
List.create(name: "Action")


puts 'Finished movies and lists!'

puts 'Creating fake bookmarks ...'
Bookmark.create(:list_id=>15, :movie_id=>55, :comment=>"Pretty Good")
Bookmark.create(:list_id=>15, :movie_id=>57, :comment=>"Excellent!")

puts "All done"

puts Movie.all
puts Bookmark.all
puts List.all
