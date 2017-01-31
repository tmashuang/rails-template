class User < ApplicationRecord

  validates :email, uniqueness: true
  validates :name, presence: true
  validates :password_hash, presence: true
  	has_many :carts
  	has_many :products_users
  	has_many :products, through: :products_users

  	include BCrypt

  	def password
      	@password ||= Password.new(password_hash)
  	end

  	def password=(new_password)
  		@password = Password.create(new_password)
  		self.password_hash = @password
  	end

  	def self.authenticate(email, password)
  		user = User.find_by(email: email)
  		if user
  			if user.password == password
  				return user
  			else
  				return nil
  			end
  		else
  			return user
  		end
  	end

end
