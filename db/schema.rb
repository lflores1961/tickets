# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_01_27_223008) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "clients", force: :cascade do |t|
    t.string "name"
    t.text "address"
    t.string "phone"
    t.string "rfc"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "email"
  end

  create_table "tickets", force: :cascade do |t|
    t.integer "order_number"
    t.date "order_date"
    t.bigint "client_id", null: false
    t.text "equipment_descrip"
    t.string "clave_equipment"
    t.text "equipment_state"
    t.text "observations"
    t.text "diagnostic"
    t.decimal "cost", precision: 10, scale: 2
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.datetime "closing_time"
    t.integer "status", default: 0
    t.index ["client_id"], name: "index_tickets_on_client_id"
  end

  add_foreign_key "tickets", "clients"
end
