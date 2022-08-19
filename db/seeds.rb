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


  movie1 = Movie.new(
    title: Faker::Movie.title,
    overview: Faker::Movie.quote,
    poster_url: Faker::Internet.url,
    rating:  rand(0.0...10.0).round(1)
  )
  movie1.save!

  movie2 = Movie.new(
    title: Faker::Movie.title,
    overview: Faker::Movie.quote,
    poster_url: Faker::Internet.url,
    rating:  rand(0.0...10.0).round(1)
  )
  movie2.save!

  movie3 = Movie.new(
    title: Faker::Movie.title,
    overview: Faker::Movie.quote,
    poster_url: Faker::Internet.url,
    rating:  rand(0.0...10.0).round(1)
  )
  movie3.save!


  movie4 = Movie.new(
    title: Faker::Movie.title,
    overview: Faker::Movie.quote,
    poster_url: Faker::Internet.url,
    rating:  rand(0.0...10.0).round(1)
  )
  movie4.save!

  movie5 = Movie.new(
    title: Faker::Movie.title,
    overview: Faker::Movie.quote,
    poster_url: Faker::Internet.url,
    rating:  rand(0.0...10.0).round(1)
  )
  movie5.save!

  movie6 = Movie.new(
    title: Faker::Movie.title,
    overview: Faker::Movie.quote,
    poster_url: Faker::Internet.url,
    rating:  rand(0.0...10.0).round(1)
  )
  movie6.save!

puts 'Creating fake lists ...'
list1 = List.create(name: "Fiction")
list2 = List.create(name:"Romance")
list3 = List.create(name: "Action")


puts 'Finished movies and lists!'

puts 'Creating fake bookmarks ...'
Bookmark.create(:list_id=> List.first.id, :movie_id=>Movie.last.id, :comment=>"Pretty Good")
Bookmark.create(:list_id=>List.first.id, :movie_id=>Movie.first.id, :comment=>"Excellent!")

puts "All done"

puts Movie.all
puts Bookmark.all
puts List.all
