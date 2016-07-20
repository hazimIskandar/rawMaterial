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

ActiveRecord::Schema.define(version: 20160715024544) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "materials", force: :cascade do |t|
    t.string   "name"
    t.string   "unit"
    t.integer  "minimum_stock"
    t.decimal  "average_price"
    t.integer  "current_stock"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "raw_transactions", force: :cascade do |t|
    t.date     "t_date"
    t.string   "t_type"
    t.integer  "t_quantity"
    t.decimal  "t_total_price"
    t.decimal  "t_price_unit"
    t.string   "t_supplier"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.integer  "material_id"
  end

  add_index "raw_transactions", ["material_id"], name: "index_raw_transactions_on_material_id", using: :btree

  add_foreign_key "raw_transactions", "materials"
end
