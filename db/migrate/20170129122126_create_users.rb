class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :username
      t.string :password_hash
      t.string :email

      t.timestamps null: false
    end
  end
end
