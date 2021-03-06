class CreateCreators < ActiveRecord::Migration
  def change
    create_table :creators do |t|
      t.string :username
      t.string :email
      t.string "password_digest", :null => false
      t.string :api_key
      t.timestamps
    end
  end
end
