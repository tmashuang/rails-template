class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :name
      t.integer :karma
      t.string :email
      t.string :industry
      t.string :department
      t.string :password_hash

      t.timestamps
    end
  end
end
