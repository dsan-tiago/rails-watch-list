require 'rails_helper'

RSpec.describe Bookmark, type: :model do
  let(:movie) { Movie.create(title: "Inception", overview: "A mind-bending thriller", poster_url: "https://example.com/poster.jpg", rating: 8.8) }
  let(:list) { List.create(name: "My Favorites") }

  it "is valid with a comment, movie, and list" do
    bookmark = Bookmark.new(comment: "Great movie!", movie: movie, list: list)
    expect(bookmark).to be_valid
  end

  it "is not valid without a comment" do
    bookmark = Bookmark.new(movie: movie, list: list)
    expect(bookmark).to_not be_valid
  end
end
