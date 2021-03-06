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

ActiveRecord::Schema.define(version: 20151128185048) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "dyalises", force: :cascade do |t|
    t.string   "type_dyalisis"
    t.text     "description"
    t.string   "medical_unit"
    t.integer  "user_id"
    t.integer  "machine_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "dyalises", ["machine_id"], name: "index_dyalises_on_machine_id", using: :btree
  add_index "dyalises", ["user_id"], name: "index_dyalises_on_user_id", using: :btree

  create_table "machines", force: :cascade do |t|
    t.string   "name"
    t.string   "model"
    t.boolean  "active"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "requests", force: :cascade do |t|
    t.datetime "date"
    t.text     "description"
    t.integer  "machine_id"
    t.integer  "supply_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "requests", ["machine_id"], name: "index_requests_on_machine_id", using: :btree
  add_index "requests", ["supply_id"], name: "index_requests_on_supply_id", using: :btree

  create_table "shifts", force: :cascade do |t|
    t.string   "type_shift"
    t.datetime "start_shift"
    t.datetime "end_shift"
    t.integer  "user_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "shifts", ["user_id"], name: "index_shifts_on_user_id", using: :btree

  create_table "supplies", force: :cascade do |t|
    t.string   "name"
    t.integer  "stock"
    t.string   "type_supply"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.string   "name"
    t.string   "lastname"
    t.string   "rut"
    t.string   "address"
    t.integer  "phone"
    t.integer  "role"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  add_foreign_key "dyalises", "machines"
  add_foreign_key "dyalises", "users"
  add_foreign_key "requests", "machines"
  add_foreign_key "requests", "supplies"
  add_foreign_key "shifts", "users"
end
