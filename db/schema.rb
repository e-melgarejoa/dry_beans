# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.1].define(version: 2024_04_08_192001) do
  create_table "drive_routes", force: :cascade do |t|
    t.date "start_date"
    t.date "limit_date"
    t.string "status_route"
    t.string "company"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "vehicle_id", null: false
    t.integer "driver_id", null: false
    t.string "name"
    t.index ["driver_id"], name: "index_drive_routes_on_driver_id"
    t.index ["vehicle_id"], name: "index_drive_routes_on_vehicle_id"
  end

  create_table "drivers", force: :cascade do |t|
    t.string "name"
    t.string "last_name"
    t.string "email"
    t.integer "phone"
    t.string "contractor_company"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "transactions", force: :cascade do |t|
    t.string "transaction_type"
    t.string "receiver"
    t.string "seller"
    t.string "status"
    t.integer "trip_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "observation"
    t.datetime "transaction_date"
    t.index ["trip_id"], name: "index_transactions_on_trip_id"
  end

  create_table "trips", force: :cascade do |t|
    t.string "origin"
    t.string "destiny"
    t.date "start_date"
    t.date "end_date"
    t.integer "stops"
    t.string "status"
    t.integer "drive_route_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "priority"
    t.index ["drive_route_id"], name: "index_trips_on_drive_route_id"
  end

  create_table "vehicles", force: :cascade do |t|
    t.string "classification"
    t.string "brand"
    t.integer "year"
    t.string "color"
    t.string "fuel"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "identification_plate"
  end

  add_foreign_key "drive_routes", "drivers"
  add_foreign_key "drive_routes", "vehicles"
  add_foreign_key "transactions", "trips"
  add_foreign_key "trips", "drive_routes"
end
