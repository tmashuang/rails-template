require 'rails_helper'

RSpec.describe CategoriesController, type: :controller do
  let(:category) { FactoryGirl.create(:category)}

  describe 'category#index' do
    it "loads all categories" do
      @all_categories = []
      5.times {@all_categories << FactoryGirl.create(:category)}
      get :index
      expect(assigns[:categories]).to eq @all_categories
      expect(response.status).to eq 200
      expect(response).to render_template(:index)
    end

    it "is not valid without a category name" do

    end
  end

end
