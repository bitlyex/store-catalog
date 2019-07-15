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

ActiveRecord::Schema.define(version: 2019_06_29_122128) do

  create_table "accounts", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name", limit: 50, default: "no name", null: false
    t.string "email", limit: 50, null: false
    t.bigint "phone_number", null: false
    t.string "user_role", limit: 10, default: "no role"
    t.string "status", limit: 10, default: "no status"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "gopays", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.integer "balance"
    t.integer "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "payments", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.integer "balance"
    t.integer "account_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "stores", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name_store", limit: 20, default: "no name"
    t.string "address", limit: 50, default: "no address"
    t.text "subdistrict", limit: 255, null: false
    t.text "province", limit: 255, null: false
    t.text "country", limit: 255, null: false
    t.integer "account_id", default: 0
    t.integer "payment_id", default: 0
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name"
    t.string "username"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string "password_digest"
  end

end
