class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username
      t.string :email
      t.string "password_digest", :null => false
      t.string :api_key
      t.string :admin_auth
      t.timestamps null: false
    end
  end
end
