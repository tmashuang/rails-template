class Product < ApplicationRecord

  has_and_belongs_to_many :categories

  	has_many :users_products
  	has_many :users, through: :products_users

  	has_many :products_carts
  	has_many :carts, through: :products_carts

   	validates :name, :price, :quantity, :description, presence: true, allow_blank: false
   	before_save :init

  	def init
  		if self.picture.blank?
  		  self.picture = "http://placehold.it/250x250"
  		end
  	end

end
