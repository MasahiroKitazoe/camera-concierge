# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20180928103918) do

  create_table "camera_ranks", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.bigint "camera_id"
    t.bigint "rank_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["camera_id"], name: "index_camera_ranks_on_camera_id"
    t.index ["rank_id"], name: "index_camera_ranks_on_rank_id"
  end

  create_table "camera_reviews", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.bigint "camera_id"
    t.bigint "review_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["camera_id"], name: "index_camera_reviews_on_camera_id"
    t.index ["review_id"], name: "index_camera_reviews_on_review_id"
  end

  create_table "camera_types", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cameras", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "name"
    t.integer "price"
    t.integer "pixel"
    t.integer "min_iso"
    t.integer "max_iso"
    t.float "continuous_shooting_performance", limit: 24
    t.string "shutter_speed"
    t.float "monitor_size", limit: 24
    t.float "monitor_pixel", limit: 24
    t.integer "max_num_of_shooting"
    t.boolean "four_k"
    t.boolean "wifi"
    t.boolean "touch_panel"
    t.string "move_panel"
    t.float "weight", limit: 24
    t.float "width", limit: 24
    t.float "height", limit: 24
    t.float "depth", limit: 24
    t.bigint "frame_id"
    t.bigint "maker_id"
    t.bigint "finder_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.float "f_value", limit: 24
    t.integer "max_num_of_shooting_with_finder"
    t.string "bluetooth"
    t.float "zoom", limit: 24
    t.integer "min_focus"
    t.integer "max_focus"
    t.boolean "selfie"
    t.string "waterproof"
    t.boolean "gps"
    t.float "nearest_shot", limit: 24
    t.string "anti_shake"
    t.boolean "five_axis_anti_shake"
    t.float "nearest_shot_with_macro_mode", limit: 24
    t.float "f_value_wide", limit: 24
    t.boolean "super_wide"
    t.integer "open_year"
    t.integer "open_month"
    t.bigint "camera_type_id"
    t.index ["camera_type_id"], name: "index_cameras_on_camera_type_id"
    t.index ["finder_id"], name: "index_cameras_on_finder_id"
    t.index ["frame_id"], name: "index_cameras_on_frame_id"
    t.index ["maker_id"], name: "index_cameras_on_maker_id"
  end

  create_table "finders", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "frames", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "makers", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ranks", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "reviews", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "title"
    t.string "body"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "camera_ranks", "cameras"
  add_foreign_key "camera_ranks", "ranks"
  add_foreign_key "camera_reviews", "cameras"
  add_foreign_key "camera_reviews", "reviews"
  add_foreign_key "cameras", "camera_types"
  add_foreign_key "cameras", "finders"
  add_foreign_key "cameras", "frames"
  add_foreign_key "cameras", "makers"
end
