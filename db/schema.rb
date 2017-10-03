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

ActiveRecord::Schema.define(version: 20171002201412) do

  create_table "field_record_details", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "bangou"
    t.integer "jushu"
    t.integer "tyokkei"
    t.integer "jukou"
    t.integer "hini"
    t.decimal "budomari", precision: 3, scale: 2
    t.decimal "lat", precision: 11, scale: 8
    t.decimal "lon", precision: 11, scale: 8
    t.bigint "field_record_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["field_record_id"], name: "index_field_record_details_on_field_record_id"
  end

  create_table "field_records", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "kanriku"
    t.integer "nendo"
    t.integer "rinpan"
    t.integer "bakku"
    t.integer "shiban"
    t.integer "shouhan"
    t.integer "kubun"
    t.integer "daihyou"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "field_record_details", "field_records"
end
