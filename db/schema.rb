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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20121124201229) do

  create_table "categories", :force => true do |t|
    t.integer  "parent_id"
    t.string   "name"
    t.integer  "lft"
    t.integer  "rgt"
    t.integer  "depth"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "categories_products", :force => true do |t|
    t.integer  "product_id"
    t.integer  "category_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "competitions", :force => true do |t|
    t.string   "name",       :null => false
    t.integer  "winner_id"
    t.datetime "start_at"
    t.datetime "end_at"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "outfits", :force => true do |t|
    t.integer  "user_id"
    t.string   "name"
    t.string   "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "permissions", :force => true do |t|
    t.string   "namespace"
    t.string   "controller"
    t.string   "action"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "permissions_users", :force => true do |t|
    t.integer "permission_id"
    t.integer "user_id"
  end

  create_table "users", :force => true do |t|
    t.string   "email",           :default => "", :null => false
    t.string   "password_digest", :default => "", :null => false
    t.string   "first_name"
    t.string   "last_name"
    t.string   "address"
    t.string   "city"
    t.string   "state"
    t.string   "zip"
    t.string   "phone"
    t.datetime "created_at",                      :null => false
    t.datetime "updated_at",                      :null => false
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true

  create_table "vendors", :force => true do |t|
    t.integer  "noteable_id"
    t.string   "noteable_type"
    t.integer  "rateable_id"
    t.string   "rateable_type"
    t.string   "name",          :null => false
    t.string   "address"
    t.string   "address2"
    t.string   "city"
    t.string   "region"
    t.string   "postal_code"
    t.string   "country"
    t.string   "email"
    t.string   "phone"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

end
