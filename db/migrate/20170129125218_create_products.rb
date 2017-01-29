class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.string :name
      t.string :picture
      t.text :description
      t.decimal :price
      t.integer :quantity

      t.timestamps null: false
    end
  end
end
