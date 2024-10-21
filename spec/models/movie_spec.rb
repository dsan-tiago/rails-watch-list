require 'rails_helper'

RSpec.describe Movie, type: :model do
  it "is valid with valid attributes" do
    movie = Movie.new(
      title: "Inception",
      overview: "A mind-bending thriller",
      poster_url: "https://example.com/poster.jpg",
      rating: 8.8
    )
    expect(movie).to be_valid
  end

  it "is not valid without a title" do
    movie = Movie.new(overview: "A mind-bending thriller")
    expect(movie).to_not be_valid
  end
end
