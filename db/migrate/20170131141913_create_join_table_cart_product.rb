class CreateJoinTableCartProduct < ActiveRecord::Migration[5.0]
  def change
    create_join_table :carts, :products do |t|
      t.index :cart_id
      t.index :product_id
      t.integer :quantity

      t.timestamps null: false
    end
  end
end
