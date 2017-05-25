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

ActiveRecord::Schema.define(version: 20170525163746) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "animals", force: :cascade do |t|
    t.string "species_cd"
    t.string "scientific_name"
    t.string "common_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "captains", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "catches", force: :cascade do |t|
    t.integer "sample_id"
    t.integer "animal_id"
    t.integer "fork_length"
    t.integer "girth"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "drops", force: :cascade do |t|
    t.integer "sample_id"
    t.integer "drop_number"
    t.string "lines"
    t.datetime "start_time"
    t.integer "start_depth"
    t.string "start_lat"
    t.string "start_lon"
    t.datetime "end_time"
    t.integer "end_depth"
    t.string "end_lat"
    t.string "end_lon"
    t.string "fish_caught"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "managers", force: :cascade do |t|
    t.string "name"
    t.string "agency"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "observers", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "samples", force: :cascade do |t|
    t.integer "grid_number"
    t.datetime "arrival_time"
    t.integer "wind_speed"
    t.integer "wave_height"
    t.string "current_speed"
    t.text "sample_notes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "trip_id"
  end

  create_table "trips", force: :cascade do |t|
    t.date "date"
    t.string "vessel"
    t.integer "captain_id"
    t.integer "user_id"
    t.datetime "depart_time"
    t.datetime "return_time"
    t.text "trip_notes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "manager_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
    t.integer "role"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
