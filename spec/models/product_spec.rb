require 'rails_helper'

RSpec.describe Product, type: :model do
  before do
    @good_product = FactoryGirl.build(:product)
    @bad_name = FactoryGirl.build(:product, name: nil)
    @bad_price = FactoryGirl.build(:product, price: nil)
    @bad_quanitiy = FactoryGirl.build(:product, quantity: -1)
    @bad_description = FactoryGirl.build(:product, description: nil)
  end

  it "is valid with the valid attributes" do
    expect(@good_product).to be_valid
  end

  it "is not valid without a product name" do
    expect(@bad_name).to_not be_valid
  end

  it "is not valid without a product price" do
    expect(@bad_price).to_not be_valid
  end

  it "is not valid when quantity is a negative" do
    expect(@bad_quantity).not_to eq(-1)
  end

  it "is not valid without a product description" do
    expect(@bad_description).to_not be_valid
  end
end
