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

ActiveRecord::Schema.define(version: 20180402135237) do

  create_table "building_types", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "buildings", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "facility_id"
  end

  create_table "facilities", force: :cascade do |t|
    t.string "name"
    t.integer "gallery_id"
    t.integer "square"
    t.string "adress"
    t.integer "metro_station_id"
    t.integer "okrug_id"
    t.integer "floors"
    t.integer "level"
    t.integer "distance"
    t.text "description"
    t.integer "user_id"
    t.integer "facility_type_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "published_at"
  end

  create_table "facility_types", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "floors", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.integer "building_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "metro_lines", force: :cascade do |t|
    t.string "name"
    t.string "color"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "metro_stations", force: :cascade do |t|
    t.string "name"
    t.integer "metro_line_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "offer_types", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "offers", force: :cascade do |t|
    t.string "name"
    t.integer "gallery_id"
    t.integer "offer_type_id"
    t.integer "floor_id"
    t.integer "building_id"
    t.integer "facility_id"
    t.datetime "published_at"
    t.integer "price"
    t.integer "price_type_id"
    t.integer "square"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "deposit"
    t.integer "building_type_id"
  end

  create_table "okrugs", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "price_types", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "regions", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
