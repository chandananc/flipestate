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

ActiveRecord::Schema.define(version: 20150725043051) do

  create_table "apart_attachments", force: :cascade do |t|
    t.integer  "apart_id"
    t.string   "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "apartment_attachments", force: :cascade do |t|
    t.integer  "apatment_id"
    t.string   "image"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "apartments", force: :cascade do |t|
    t.string   "name"
    t.integer  "sqft"
    t.integer  "rooms"
    t.integer  "buit_year"
    t.integer  "cost"
    t.integer  "address"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "image"
    t.string   "addresses"
  end

  create_table "aparts", force: :cascade do |t|
    t.string   "name"
    t.float    "sqft"
    t.integer  "rooms"
    t.integer  "built_year"
    t.decimal  "cost"
    t.string   "image"
    t.string   "address"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "categories", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cs", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "item_attachments", force: :cascade do |t|
    t.integer  "item_id"
    t.string   "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "items", force: :cascade do |t|
    t.string   "name"
    t.float    "sqft"
    t.integer  "rooms"
    t.integer  "built_year"
    t.decimal  "cost"
    t.string   "address"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "category_id"
    t.string   "image"
  end

  create_table "list_attachments", force: :cascade do |t|
    t.integer  "list_id"
    t.string   "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "listing_attachments", force: :cascade do |t|
    t.integer  "listing_id"
    t.string   "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "listings", force: :cascade do |t|
    t.string   "name"
    t.float    "sqft"
    t.integer  "rooms"
    t.integer  "built_year"
    t.decimal  "cost"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "image"
    t.string   "address"
  end

  create_table "lists", force: :cascade do |t|
    t.string   "name"
    t.float    "sqft"
    t.integer  "rooms"
    t.integer  "built_year"
    t.decimal  "cost"
    t.string   "address"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "category_id"
    t.integer  "user_id"
  end

  create_table "pages", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "post_attachments", force: :cascade do |t|
    t.integer  "post_id"
    t.string   "avatar"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "realestates", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "reviews", force: :cascade do |t|
    t.string   "title"
    t.text     "comment"
    t.integer  "rating"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "town_attachments", force: :cascade do |t|
    t.integer  "town_id"
    t.string   "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "townhouses", force: :cascade do |t|
    t.string   "name"
    t.integer  "sqft"
    t.integer  "rooms"
    t.integer  "built_year"
    t.integer  "cost"
    t.string   "address"
    t.string   "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "towns", force: :cascade do |t|
    t.string   "name"
    t.integer  "sqft"
    t.integer  "rooms"
    t.integer  "buit_year"
    t.integer  "cost"
    t.string   "address"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "image"
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "",    null: false
    t.string   "encrypted_password",     default: "",    null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,     null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
    t.string   "gender"
    t.integer  "birth_date"
    t.string   "about_me"
    t.string   "state"
    t.string   "city_town"
    t.string   "country"
    t.string   "name"
    t.string   "username"
    t.boolean  "administration",         default: false
    t.string   "image"
    t.boolean  "super_user"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
