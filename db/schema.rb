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

ActiveRecord::Schema.define(version: 2021_06_13_193524) do

  create_table "brands", force: :cascade do |t|
    t.string "brand"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "cars", force: :cascade do |t|
    t.string "license"
    t.string "color"
    t.integer "version_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["version_id"], name: "index_cars_on_version_id"
  end

  create_table "clients", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.date "birthday"
    t.integer "document_number"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "countries", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "employees", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.date "birthday"
    t.integer "document_number"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "exam_types", force: :cascade do |t|
    t.string "name"
    t.integer "cost_on_argentinian_pesos"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "gnc_charges", force: :cascade do |t|
    t.datetime "charge_moment"
    t.string "weather"
    t.integer "celsius_temperature"
    t.integer "cost_on_argentinian_pesos"
    t.integer "car_id", null: false
    t.integer "service_station_id", null: false
    t.integer "client_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["car_id"], name: "index_gnc_charges_on_car_id"
    t.index ["client_id"], name: "index_gnc_charges_on_client_id"
    t.index ["service_station_id"], name: "index_gnc_charges_on_service_station_id"
  end

  create_table "installation_employees", force: :cascade do |t|
    t.integer "kit_installation_id", null: false
    t.integer "employee_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["employee_id"], name: "index_installation_employees_on_employee_id"
    t.index ["kit_installation_id"], name: "index_installation_employees_on_kit_installation_id"
  end

  create_table "kit_installations", force: :cascade do |t|
    t.datetime "date"
    t.integer "cost_on_argentinian_pesos"
    t.integer "tube_kit_id", null: false
    t.integer "workshop_id", null: false
    t.integer "car_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["car_id"], name: "index_kit_installations_on_car_id"
    t.index ["tube_kit_id"], name: "index_kit_installations_on_tube_kit_id"
    t.index ["workshop_id"], name: "index_kit_installations_on_workshop_id"
  end

  create_table "kit_verifications", force: :cascade do |t|
    t.date "year"
    t.boolean "enabled"
    t.integer "tube_kit_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["tube_kit_id"], name: "index_kit_verifications_on_tube_kit_id"
  end

  create_table "localities", force: :cascade do |t|
    t.string "name"
    t.integer "province_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["province_id"], name: "index_localities_on_province_id"
  end

  create_table "models", force: :cascade do |t|
    t.string "model"
    t.integer "brand_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["brand_id"], name: "index_models_on_brand_id"
  end

  create_table "provinces", force: :cascade do |t|
    t.string "name"
    t.integer "country_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["country_id"], name: "index_provinces_on_country_id"
  end

  create_table "service_stations", force: :cascade do |t|
    t.string "name"
    t.string "adress"
    t.string "fuel_types"
    t.string "flag"
    t.integer "dispensers_quantity"
    t.integer "locality_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["locality_id"], name: "index_service_stations_on_locality_id"
  end

  create_table "technicians", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.date "birthday"
    t.integer "document_number"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "tube_kits", force: :cascade do |t|
    t.integer "kit_number"
    t.integer "tube_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["tube_id"], name: "index_tube_kits_on_tube_id"
  end

  create_table "tube_verifications", force: :cascade do |t|
    t.date "date"
    t.boolean "enabled"
    t.integer "exam_type_id", null: false
    t.integer "tube_id", null: false
    t.integer "technician_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["exam_type_id"], name: "index_tube_verifications_on_exam_type_id"
    t.index ["technician_id"], name: "index_tube_verifications_on_technician_id"
    t.index ["tube_id"], name: "index_tube_verifications_on_tube_id"
  end

  create_table "tubes", force: :cascade do |t|
    t.integer "diameter_on_milimeters"
    t.integer "capacity_on_liters"
    t.date "expiration_date"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.boolean "admin"
    t.string "username"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "versions", force: :cascade do |t|
    t.string "version"
    t.integer "model_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["model_id"], name: "index_versions_on_model_id"
  end

  create_table "workshops", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.integer "locality_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["locality_id"], name: "index_workshops_on_locality_id"
  end

  add_foreign_key "cars", "versions"
  add_foreign_key "gnc_charges", "cars"
  add_foreign_key "gnc_charges", "clients"
  add_foreign_key "gnc_charges", "service_stations"
  add_foreign_key "installation_employees", "employees"
  add_foreign_key "installation_employees", "kit_installations"
  add_foreign_key "kit_installations", "cars"
  add_foreign_key "kit_installations", "tube_kits"
  add_foreign_key "kit_installations", "workshops"
  add_foreign_key "kit_verifications", "tube_kits"
  add_foreign_key "localities", "provinces"
  add_foreign_key "models", "brands"
  add_foreign_key "provinces", "countries"
  add_foreign_key "service_stations", "localities"
  add_foreign_key "tube_kits", "tubes"
  add_foreign_key "tube_verifications", "exam_types"
  add_foreign_key "tube_verifications", "technicians"
  add_foreign_key "tube_verifications", "tubes"
  add_foreign_key "versions", "models"
  add_foreign_key "workshops", "localities"
end
