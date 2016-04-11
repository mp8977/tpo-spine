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

ActiveRecord::Schema.define(version: 20160403000008) do

  create_table "addresses", force: :cascade do |t|
    t.string   "streetName",   limit: 255
    t.string   "streetNumber", limit: 255
    t.integer  "post_id",      limit: 4
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  add_index "addresses", ["post_id"], name: "fk_rails_b033eb23a6", using: :btree

  create_table "admins", force: :cascade do |t|
    t.datetime "created_at",                                      null: false
    t.datetime "updated_at",                                      null: false
    t.string   "email",                  limit: 255, default: "", null: false
    t.string   "encrypted_password",     limit: 255, default: "", null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.integer  "sign_in_count",          limit: 4,   default: 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.integer  "failed_attempts",        limit: 4,   default: 0
    t.datetime "locked_at"
  end

  create_table "appointments", force: :cascade do |t|
    t.datetime "date"
    t.integer  "check_up_id", limit: 4
    t.integer  "doctor_id",   limit: 4
    t.integer  "patient_id",  limit: 4
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  add_index "appointments", ["check_up_id"], name: "fk_rails_3d1ece398e", using: :btree
  add_index "appointments", ["doctor_id"], name: "fk_rails_8db8e1e8a5", using: :btree
  add_index "appointments", ["patient_id"], name: "fk_rails_c63da04ab4", using: :btree

  create_table "check_ups", force: :cascade do |t|
    t.date     "date"
    t.integer  "doctor_id",  limit: 4
    t.integer  "patient_id", limit: 4
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  add_index "check_ups", ["doctor_id"], name: "fk_rails_9948e4a45d", using: :btree
  add_index "check_ups", ["patient_id"], name: "fk_rails_b3f02e3817", using: :btree

  create_table "contact_people", force: :cascade do |t|
    t.string   "lastName",     limit: 255
    t.string   "firstName",    limit: 255
    t.string   "phone",        limit: 255
    t.string   "relationship", limit: 255
    t.integer  "patient_id",   limit: 4
    t.integer  "address_id",   limit: 4
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  add_index "contact_people", ["address_id"], name: "fk_rails_1e367f8ddb", using: :btree
  add_index "contact_people", ["patient_id"], name: "fk_rails_f38f81b180", using: :btree

  create_table "diagnose_has_medicines", force: :cascade do |t|
    t.integer  "medicine_id", limit: 4
    t.integer  "illness_id",  limit: 4
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  add_index "diagnose_has_medicines", ["illness_id"], name: "fk_rails_9fb7f36d9c", using: :btree
  add_index "diagnose_has_medicines", ["medicine_id"], name: "fk_rails_9ec0584fb1", using: :btree

  create_table "diet_checks", force: :cascade do |t|
    t.integer  "diet_id",     limit: 4
    t.integer  "check_up_id", limit: 4
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  add_index "diet_checks", ["check_up_id"], name: "fk_rails_d15c0f9979", using: :btree
  add_index "diet_checks", ["diet_id"], name: "fk_rails_72b2ed97d4", using: :btree

  create_table "diet_instructions", force: :cascade do |t|
    t.string   "url",        limit: 255
    t.integer  "diet_id",    limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_index "diet_instructions", ["diet_id"], name: "fk_rails_86f8c39ff5", using: :btree

  create_table "diets", force: :cascade do |t|
    t.string   "dietNumber", limit: 255
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "doctor_has_nurses", force: :cascade do |t|
    t.integer  "doctor_id",  limit: 4
    t.integer  "nurse_id",   limit: 4
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  add_index "doctor_has_nurses", ["doctor_id"], name: "fk_rails_26051a9fba", using: :btree
  add_index "doctor_has_nurses", ["nurse_id"], name: "fk_rails_d19c74c191", using: :btree

  create_table "doctor_has_patients", force: :cascade do |t|
    t.integer  "doctor_id",  limit: 4
    t.integer  "patient_id", limit: 4
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  add_index "doctor_has_patients", ["doctor_id"], name: "fk_rails_9fa7c8c77e", using: :btree
  add_index "doctor_has_patients", ["patient_id"], name: "fk_rails_1def539324", using: :btree

  create_table "doctors", force: :cascade do |t|
    t.string   "doctorNumber",           limit: 255
    t.string   "type",                   limit: 255
    t.string   "lastName",               limit: 255
    t.string   "firstName",              limit: 255
    t.string   "phone",                  limit: 255
    t.integer  "limitPatient",           limit: 4
    t.integer  "hospital_id",            limit: 4
    t.datetime "created_at",                                      null: false
    t.datetime "updated_at",                                      null: false
    t.string   "email",                  limit: 255, default: "", null: false
    t.string   "encrypted_password",     limit: 255, default: "", null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.integer  "sign_in_count",          limit: 4,   default: 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.integer  "failed_attempts",        limit: 4,   default: 0
    t.datetime "locked_at"
  end

  add_index "doctors", ["hospital_id"], name: "fk_rails_5d3ea700f7", using: :btree

  create_table "hospitals", force: :cascade do |t|
    t.string   "hospitalNumber", limit: 255
    t.string   "hospitalName",   limit: 255
    t.integer  "address_id",     limit: 4
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  add_index "hospitals", ["address_id"], name: "fk_rails_1673fa1e63", using: :btree

  create_table "illness_checks", force: :cascade do |t|
    t.integer  "illness_id",  limit: 4
    t.integer  "check_up_id", limit: 4
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  add_index "illness_checks", ["check_up_id"], name: "fk_rails_a24aa67e18", using: :btree
  add_index "illness_checks", ["illness_id"], name: "fk_rails_890d4e35be", using: :btree

  create_table "illnesses", force: :cascade do |t|
    t.string   "illnessNumber", limit: 255
    t.string   "name",          limit: 255
    t.boolean  "isAllergy"
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "measurement_docs", force: :cascade do |t|
    t.integer  "check_up_id",         limit: 4
    t.integer  "part_measurement_id", limit: 4
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
  end

  add_index "measurement_docs", ["check_up_id"], name: "fk_rails_ef34d5a81a", using: :btree
  add_index "measurement_docs", ["part_measurement_id"], name: "fk_rails_6228128a38", using: :btree

  create_table "measurement_homes", force: :cascade do |t|
    t.integer  "patient_id",          limit: 4
    t.integer  "part_measurement_id", limit: 4
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
  end

  add_index "measurement_homes", ["part_measurement_id"], name: "fk_rails_5263711ed8", using: :btree
  add_index "measurement_homes", ["patient_id"], name: "fk_rails_f43f4d1c2e", using: :btree

  create_table "measurements", force: :cascade do |t|
    t.date     "date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "medicine_checks", force: :cascade do |t|
    t.integer  "medicine_id", limit: 4
    t.integer  "check_up_id", limit: 4
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  add_index "medicine_checks", ["check_up_id"], name: "fk_rails_72f5af1792", using: :btree
  add_index "medicine_checks", ["medicine_id"], name: "fk_rails_ecd3adc7bb", using: :btree

  create_table "medicine_instructions", force: :cascade do |t|
    t.string   "url",        limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "medicines", force: :cascade do |t|
    t.string   "medicineNumber",          limit: 255
    t.string   "name",                    limit: 255
    t.boolean  "inUse"
    t.integer  "medicine_instruction_id", limit: 4
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "medicines", ["medicine_instruction_id"], name: "fk_rails_75c3d9c49a", using: :btree

  create_table "nurses", force: :cascade do |t|
    t.string   "nurseNumber",            limit: 255
    t.string   "lastName",               limit: 255
    t.string   "firstName",              limit: 255
    t.string   "phone",                  limit: 255
    t.integer  "hospital_id",            limit: 4
    t.datetime "created_at",                                      null: false
    t.datetime "updated_at",                                      null: false
    t.string   "email",                  limit: 255, default: "", null: false
    t.string   "encrypted_password",     limit: 255, default: "", null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.integer  "sign_in_count",          limit: 4,   default: 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.integer  "failed_attempts",        limit: 4,   default: 0
    t.datetime "locked_at"
  end

  add_index "nurses", ["hospital_id"], name: "fk_rails_1ddb00e94b", using: :btree

  create_table "part_measurements", force: :cascade do |t|
    t.string   "name",           limit: 255
    t.string   "unit",           limit: 255
    t.decimal  "value",                      precision: 10
    t.integer  "measurement_id", limit: 4
    t.datetime "created_at",                                null: false
    t.datetime "updated_at",                                null: false
  end

  add_index "part_measurements", ["measurement_id"], name: "fk_rails_b6e1df50d3", using: :btree

  create_table "patients", force: :cascade do |t|
    t.string   "cardNumber", limit: 255
    t.string   "lastName",   limit: 255
    t.string   "firstName",  limit: 255
    t.string   "phone",      limit: 255
    t.date     "birthDate"
    t.string   "sex",        limit: 255
    t.integer  "user_id",    limit: 4
    t.integer  "address_id", limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_index "patients", ["address_id"], name: "fk_rails_39783febcc", using: :btree
  add_index "patients", ["user_id"], name: "fk_rails_623f05c630", using: :btree

  create_table "posts", force: :cascade do |t|
    t.string   "postName",   limit: 255
    t.string   "postNumber", limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "users", force: :cascade do |t|
    t.boolean  "validated",                          default: false
    t.datetime "created_at",                                         null: false
    t.datetime "updated_at",                                         null: false
    t.string   "email",                  limit: 255, default: "",    null: false
    t.string   "encrypted_password",     limit: 255, default: "",    null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.integer  "sign_in_count",          limit: 4,   default: 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.string   "confirmation_token",     limit: 255
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email",      limit: 255
    t.integer  "failed_attempts",        limit: 4,   default: 0
    t.datetime "locked_at"
  end

  add_foreign_key "addresses", "posts"
  add_foreign_key "appointments", "check_ups"
  add_foreign_key "appointments", "doctors"
  add_foreign_key "appointments", "patients"
  add_foreign_key "check_ups", "doctors"
  add_foreign_key "check_ups", "patients"
  add_foreign_key "contact_people", "addresses"
  add_foreign_key "contact_people", "patients"
  add_foreign_key "diagnose_has_medicines", "illnesses"
  add_foreign_key "diagnose_has_medicines", "medicines"
  add_foreign_key "diet_checks", "check_ups"
  add_foreign_key "diet_checks", "diets"
  add_foreign_key "diet_instructions", "diets"
  add_foreign_key "doctor_has_nurses", "doctors"
  add_foreign_key "doctor_has_nurses", "nurses"
  add_foreign_key "doctor_has_patients", "doctors"
  add_foreign_key "doctor_has_patients", "patients"
  add_foreign_key "doctors", "hospitals"
  add_foreign_key "hospitals", "addresses"
  add_foreign_key "illness_checks", "check_ups"
  add_foreign_key "illness_checks", "illnesses"
  add_foreign_key "measurement_docs", "check_ups"
  add_foreign_key "measurement_docs", "part_measurements"
  add_foreign_key "measurement_homes", "part_measurements"
  add_foreign_key "measurement_homes", "patients"
  add_foreign_key "medicine_checks", "check_ups"
  add_foreign_key "medicine_checks", "medicines"
  add_foreign_key "medicines", "medicine_instructions"
  add_foreign_key "nurses", "hospitals"
  add_foreign_key "part_measurements", "measurements"
  add_foreign_key "patients", "addresses"
  add_foreign_key "patients", "users"
end
