class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.string :picture
      t.string :name
      t.text :description
      t.decimal :price
      t.integer :quantity

      t.timestamps
    end
  end
end
