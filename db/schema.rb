
ActiveRecord::Schema[7.0].define(version: 2023_07_28_092009) do

  create_table "restaurants", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.string "phone_number"
    t.string "category"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "reviews", force: :cascade do |t|
    t.integer "rating"
    t.text "content"
    t.references :restaurant, foreign_key: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
