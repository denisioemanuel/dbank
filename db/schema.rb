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

ActiveRecord::Schema.define(version: 2018_06_02_031026) do

  create_table "accounts", force: :cascade do |t|
    t.integer "number"
    t.float "limit"
    t.integer "Agency_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["Agency_id"], name: "index_accounts_on_Agency_id"
  end

  create_table "agencies", force: :cascade do |t|
    t.integer "number"
    t.string "address"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "transactions", force: :cascade do |t|
    t.time "date"
    t.float "value"
    t.integer "type"
    t.integer "User_id"
    t.integer "Account_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["Account_id"], name: "index_transactions_on_Account_id"
    t.index ["User_id"], name: "index_transactions_on_User_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
