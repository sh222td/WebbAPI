ActiveRecord::Schema.define(version: 20150306123338) do

  create_table "events", force: true do |t|
    t.integer  "userID"
    t.integer  "positionID"
    t.integer  "tagID"
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "positions", force: true do |t|
    t.float    "longitude"
    t.float    "latitude"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tags", force: true do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: true do |t|
    t.string   "username"
    t.string   "email"
    t.string   "password_digest", null: false
    t.string   "api_key"
    t.string   "admin_auth"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

end
