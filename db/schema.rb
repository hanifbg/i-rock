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

ActiveRecord::Schema.define(version: 20210629103404) do

  create_table "achievements", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.integer  "privacy"
    t.boolean  "feature"
    t.string   "cover_image"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "user_id"
  end

  add_index "achievements", ["user_id"], name: "index_achievements_on_user_id"

  create_table "encouragements", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "achievement_id"
    t.string   "message"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  add_index "encouragements", ["achievement_id"], name: "index_encouragements_on_achievement_id"
  add_index "encouragements", ["user_id"], name: "index_encouragements_on_user_id"

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
