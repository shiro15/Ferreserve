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

ActiveRecord::Schema.define(version: 20161211140241) do

  create_table "reservations", force: :cascade do |t|
    t.integer  "service_id",                 null: false
    t.integer  "user_id_id",                 null: false
    t.integer  "people_num",                 null: false
    t.integer  "kids_num",   default: 0
    t.boolean  "meal",       default: false
    t.integer  "car",        default: 0
    t.integer  "room",       default: 0
    t.integer  "total",                      null: false
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  create_table "routes", force: :cascade do |t|
    t.string   "start_place", null: false
    t.string   "goal_place",  null: false
    t.time     "time",        null: false
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "services", force: :cascade do |t|
    t.integer  "ship_id",       null: false
    t.integer  "route_id",      null: false
    t.datetime "start_date",    null: false
    t.integer  "passenger_num", null: false
    t.integer  "car_num",       null: false
    t.integer  "taken_room",    null: false
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "ships", force: :cascade do |t|
    t.string   "ship_name",   null: false
    t.integer  "seat_cap",    null: false
    t.integer  "car_cap",     null: false
    t.integer  "room_cap",    null: false
    t.integer  "car_charge",  null: false
    t.integer  "room_charge", null: false
    t.integer  "meal_charge", null: false
    t.integer  "fare",        null: false
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "name",                          null: false
    t.string   "address",                       null: false
    t.string   "mail",                          null: false
    t.string   "pass",                          null: false
    t.boolean  "administrator", default: false
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
  end

end
