require 'rails_helper'

RSpec.describe Category, type: :model do
  let(:category) { FactoryGirl.create(:category)}

  describe Category do
    it "is valid with valid attributes" do
      
    end

    it "is not valid without a category name" do

    end

  end

end
