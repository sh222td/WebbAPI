class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.integer :creator_id
      t.integer :position_id
      t.integer :tag_id
      t.string :description
      t.timestamps null: false
    end
  end
end
