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

ActiveRecord::Schema.define(version: 20170825195140) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "doctors", force: :cascade do |t|
    t.string "first_name", null: false
    t.string "last_name", null: false
    t.string "license", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["first_name", "last_name", "license"], name: "index_doctors_on_first_name_and_last_name_and_license", unique: true
  end

  create_table "doctors_specialties", force: :cascade do |t|
    t.integer "doctor_id"
    t.integer "specialty_id"
  end

  create_table "locations", force: :cascade do |t|
    t.integer "doctor_id", null: false
    t.string "address", null: false
    t.string "phone", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "plans", force: :cascade do |t|
    t.integer "provider_id", null: false
    t.string "name", null: false
    t.text "url", null: false
    t.integer "record_limit", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "provider_records", force: :cascade do |t|
    t.integer "provider_id", null: false
    t.string "accepted_plan_ids", null: false
    t.string "first_name", null: false
    t.string "last_name", null: false
    t.string "license", null: false
    t.string "address", null: false
    t.string "phone", null: false
    t.text "specialties", null: false
    t.integer "doctor_id"
    t.index ["first_name", "last_name", "provider_id"], name: "first_last_provider_id", unique: true
  end

  create_table "providers", id: :serial, force: :cascade do |t|
    t.string "name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "specialties", force: :cascade do |t|
    t.string "name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
