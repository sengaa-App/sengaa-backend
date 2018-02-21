class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :username
      t.integer :score, default: 0
      t.string :auth_id
      t.string :picture
      t.string :picture
      t.string :background
      t.integer :gender
      t.string :fist_name
      t.string :family_name
      t.string :login_token
      t.string :email
      t.string :auth_token
      t.datetime :token_generated
      t.date :birthdate

      t.timestamps
    end
  end
end
