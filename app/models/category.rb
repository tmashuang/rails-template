class Category < ApplicationRecord

  has_and_belongs_to_many :products
  validates :name, presence: true, allow_blank: false, uniqueness: true

  def display_name
    returns "#{self.name}"

  end

end
