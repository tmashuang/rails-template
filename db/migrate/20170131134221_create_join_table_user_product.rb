class CreateJoinTableUserProduct < ActiveRecord::Migration[5.0]
  def change
    create_join_table :users, :products do |t|
      t.index :user_id
      t.index :product_id
      t.integer :quantity

      t.timestamps null: false
    end
  end
end
