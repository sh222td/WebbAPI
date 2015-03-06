class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.integer :userID
      t.integer :positionID
      t.integer :tagID
      t.string :description
      t.timestamps null: false
    end
  end
end
