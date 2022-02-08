ActiveRecord::Schema.define(version: 2022_02_07_203534) do

    create_table "movies", force: :cascade do |t|
      t.string "title"
      t.string "year_released"
      t.string "rated"
      t.integer "person_id"
      t.datetime "created_at", precision: 6, null: false
      t.datetime "updated_at", precision: 6, null: false
    end
  
    create_table "people", force: :cascade do |t|
      t.string "name"
      t.datetime "created_at", precision: 6, null: false
      t.datetime "updated_at", precision: 6, null: false
    end
  
    create_table "roles", force: :cascade do |t|
      t.integer "movie_id"
      t.integer "person_id"
      t.string "character_name"
      t.datetime "created_at", precision: 6, null: false
      t.datetime "updated_at", precision: 6, null: false
    end
  
  end