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

ActiveRecord::Schema.define(version: 2022_05_29_051549) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "job_orders", primary_key: "job_order_number", id: :serial, force: :cascade do |t|
    t.string "service"
    t.string "department"
    t.string "description"
    t.string "status", default: "no update yet"
    t.string "remarks", default: "no update yet"
    t.date "remarks_as_of"
    t.string "classification", default: "no update yet"
    t.string "engineering_unit", default: "no update yet"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "created_at_month"
    t.string "created_at_year"
    t.string "created_at_day"
  end

end
