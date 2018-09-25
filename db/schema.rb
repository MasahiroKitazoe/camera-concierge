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

ActiveRecord::Schema.define(version: 20180925102547) do

  create_table "camera_ranks", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.bigint "camera_id"
    t.bigint "rank_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["camera_id"], name: "index_camera_ranks_on_camera_id"
    t.index ["rank_id"], name: "index_camera_ranks_on_rank_id"
  end

  create_table "camera_types", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cameras", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "name"
    t.integer "price"
    t.integer "pixel"
    t.integer "min_iso"
    t.integer "max_iso"
    t.integer "continuous_shooting_performance"
    t.integer "shutter_speed"
    t.integer "monitor_size"
    t.integer "monitor_pixel"
    t.integer "max_num_of_shooting"
    t.boolean "four_k"
    t.boolean "wifi"
    t.boolean "touch_panel"
    t.boolean "move_panel"
    t.float "weight", limit: 24
    t.float "width", limit: 24
    t.float "height", limit: 24
    t.float "depth", limit: 24
    t.bigint "frame_id"
    t.bigint "maker_id"
    t.bigint "finder_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["finder_id"], name: "index_cameras_on_finder_id"
    t.index ["frame_id"], name: "index_cameras_on_frame_id"
    t.index ["maker_id"], name: "index_cameras_on_maker_id"
  end

  create_table "finders", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "frames", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "type"
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
  add_foreign_key "cameras", "finders"
  add_foreign_key "cameras", "frames"
  add_foreign_key "cameras", "makers"
end
