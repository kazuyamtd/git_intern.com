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

ActiveRecord::Schema.define(version: 20181112084312) do

  create_table "firms", force: :cascade do |t|
    t.string   "name",        limit: 255
    t.string   "industry",    limit: 255
    t.text     "description", limit: 65535
    t.integer  "genre_id",    limit: 4
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "image",       limit: 65535
    t.text     "genre",       limit: 65535
  end

  create_table "genres", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "jobs", force: :cascade do |t|
    t.string   "target",      limit: 255
    t.string   "type",        limit: 255
    t.text     "period",      limit: 65535
    t.string   "place",       limit: 255
    t.text     "explanation", limit: 65535
    t.text     "deadline",    limit: 65535
    t.integer  "firm_id",     limit: 4
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "reviews", force: :cascade do |t|
    t.integer  "rate",       limit: 4
    t.integer  "length",     limit: 4
    t.text     "test",       limit: 65535
    t.text     "review",     limit: 65535
    t.integer  "firm_id",    limit: 4
    t.integer  "user_id",    limit: 4
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  limit: 255, default: "", null: false
    t.string   "encrypted_password",     limit: 255, default: "", null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at",                                      null: false
    t.datetime "updated_at",                                      null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
