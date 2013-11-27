# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20131125020509) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "buses", force: true do |t|
    t.string   "name"
    t.integer  "type_of_bus"
    t.float    "lat"
    t.float    "long"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "routes", force: true do |t|
    t.integer  "route_id"
    t.string   "company_code"
    t.string   "district"
    t.string   "route_namec"
    t.string   "route_names"
    t.string   "route_namee"
    t.integer  "route_type"
    t.string   "service_mode"
    t.integer  "special_type"
    t.string   "loc_start_namec"
    t.string   "loc_start_names"
    t.string   "loc_start_namee"
    t.string   "loc_end_namec"
    t.string   "loc_end_names"
    t.string   "loc_end_namee"
    t.float    "full_fare"
    t.datetime "last_update_date"
  end

  create_table "stops", force: true do |t|
    t.string   "stop_name"
    t.integer  "route_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "stops", ["route_id"], name: "index_stops_on_route_id", using: :btree

end
