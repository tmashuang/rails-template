class Cart < ApplicationRecord

  belongs_to :user
  has_many :products_carts
  has_many :products, through: :product_carts

end
