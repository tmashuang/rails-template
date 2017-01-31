require 'rails_helper'

RSpec.describe User, type: :model do
  before do
    @good_user = FactoryGirl.build(:user)
    @bad_email = FactoryGirl.build(:user, email: nil)
    @bad_username = FactoryGirl.build(:user, username: nil)
  end

  describe User do
    it "is valid with a valid attributes" do
      expect(@good_user).to be_valid
    end

    it "is not valid without an email" do
      expect(@bad_email).to_not be_valid
    end

    it "is not valid without a username" do
      expect(@bad_username).to_not be_valid
    end

  end

end
