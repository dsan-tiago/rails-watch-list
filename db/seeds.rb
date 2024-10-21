require 'faker'

Movie.destroy_all

10.times do
  Movie.create(
    title: Faker::Movie.title,
    overview: Faker::Lorem.sentence(word_count: 15),
    poster_url: "https://picsum.photos/200/300", # Using a placeholder image service for random images
    rating: rand(1.0..10.0).round(1) # Generate a random rating between 1.0 and 10.0
  )
end

puts "10 random movies created!"
