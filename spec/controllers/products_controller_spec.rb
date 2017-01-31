require 'rails_helper'

RSpec.describe ProductsController, type: :controller do

  describe '#index' do
    it 'should load all the products' do
      @all_products = []
      5.times { @all_products << FactoryGirl.create(:product) }
      get :index
      expect(assigns[:products]).to eq @all_products
      expect(response.status).to eq 200
      expect(response).to render_template(:index)
    end
  end

end
