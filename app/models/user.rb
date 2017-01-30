class User < ApplicationRecord

  validates :name, presence: true
  validates :password_hash, presence: true
  validates :karma, numericality: true
  validates :email, presence: true, uniqueness: true

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
