class CreateUserProduct < ActiveRecord::Migration[5.0]
  def change
    create_table :user_products do |t|
      t.string :user
      t.string :product
    end
  end
end
