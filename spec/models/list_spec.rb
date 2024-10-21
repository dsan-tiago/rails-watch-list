require 'rails_helper'

RSpec.describe List, type: :model do
  it "is valid with a valid name" do
    list = List.new(name: "Favorite Movies")
    expect(list).to be_valid
  end

  it "is not valid without a name" do
    list = List.new
    expect(list).to_not be_valid
  end
end
