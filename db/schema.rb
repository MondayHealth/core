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

ActiveRecord::Schema.define(version: 20171028171713) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "directories", force: :cascade do |t|
    t.string "name", null: false
    t.string "short_name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "record_limit"
    t.index ["name"], name: "index_directories_on_name", unique: true
    t.index ["short_name"], name: "index_directories_on_short_name", unique: true
  end

  create_table "locations", force: :cascade do |t|
    t.integer "provider_id", null: false
    t.string "address", null: false
    t.string "phone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["provider_id", "address"], name: "index_locations_on_provider_id_and_address", unique: true
  end

  create_table "payors", force: :cascade do |t|
    t.string "name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name"], name: "index_payors_on_name", unique: true
  end

  create_table "plans", force: :cascade do |t|
    t.integer "payor_id", null: false
    t.string "name", null: false
    t.text "url", null: false
    t.integer "record_limit", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["payor_id", "name"], name: "index_plans_on_payor_id_and_name", unique: true
  end

  create_table "provider_records", force: :cascade do |t|
    t.integer "payor_id"
    t.string "accepted_plan_ids"
    t.string "first_name", null: false
    t.string "last_name", null: false
    t.string "license", null: false
    t.string "address", null: false
    t.string "phone"
    t.text "specialties"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "provider_id"
    t.integer "directory_id"
    t.string "certificate_number"
    t.boolean "certified"
    t.integer "minimum_fee"
    t.integer "maximum_fee"
    t.boolean "sliding_scale"
    t.boolean "free_consultation"
    t.text "services"
    t.text "languages"
    t.text "treatment_orientations"
    t.text "works_with_groups"
    t.text "works_with_ages"
    t.string "license_status"
    t.text "website_url"
    t.text "accepted_payors"
    t.string "license_number"
    t.boolean "accepting_new_patients"
    t.text "modalities"
    t.index ["first_name", "last_name", "payor_id", "directory_id"], name: "first_last_payor_id_directory_id", unique: true
  end

  create_table "providers", force: :cascade do |t|
    t.string "first_name", null: false
    t.string "last_name", null: false
    t.string "license", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["first_name", "last_name", "license"], name: "index_providers_on_first_name_and_last_name_and_license", unique: true
  end

  create_table "providers_specialties", force: :cascade do |t|
    t.integer "provider_id"
    t.integer "specialty_id"
    t.index ["provider_id", "specialty_id"], name: "index_providers_specialties_on_provider_id_and_specialty_id", unique: true
  end

  create_table "specialties", force: :cascade do |t|
    t.string "name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "is_canonical", default: false, null: false
    t.integer "alias_id"
    t.index ["name"], name: "index_specialties_on_name", unique: true
  end

end
