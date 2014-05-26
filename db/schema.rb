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

ActiveRecord::Schema.define(version: 20140522003402) do

  create_table "cities", force: true do |t|
    t.string   "title",      limit: 128
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "districts", force: true do |t|
    t.string   "title",      limit: 128
    t.integer  "city_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "houses", force: true do |t|
    t.string   "number",     limit: 8
    t.integer  "street_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

# Could not dump table "order_requests" because of following NoMethodError
#   undefined method `[]' for nil:NilClass

  create_table "streets", force: true do |t|
    t.string   "title",       limit: 128
    t.integer  "district_id"
    t.integer  "city_id"
    t.string   "full_path"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
