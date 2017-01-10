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

ActiveRecord::Schema.define(version: 20170103065859) do

  create_table "categories", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "chats", force: :cascade do |t|
    t.string   "title",      limit: 255
    t.text     "body",       limit: 65535
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.integer  "user_id",    limit: 4
  end

  create_table "find_works", force: :cascade do |t|
    t.string   "title",      limit: 255
    t.text     "body",       limit: 65535
    t.integer  "user_id",    limit: 4
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "labs", force: :cascade do |t|
    t.string   "title",      limit: 255
    t.text     "body",       limit: 65535
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.integer  "user_id",    limit: 4
  end

  create_table "message2s", force: :cascade do |t|
    t.integer  "user_id",      limit: 4
    t.integer  "find_work_id", limit: 4
    t.text     "content",      limit: 65535
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
    t.string   "avatar",       limit: 255
  end

  add_index "message2s", ["find_work_id"], name: "index_message2s_on_find_work_id", using: :btree
  add_index "message2s", ["user_id"], name: "index_message2s_on_user_id", using: :btree

  create_table "message3s", force: :cascade do |t|
    t.integer  "user_id",    limit: 4
    t.integer  "lab_id",     limit: 4
    t.text     "content",    limit: 65535
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.string   "avatar",     limit: 255
  end

  add_index "message3s", ["lab_id"], name: "index_message3s_on_lab_id", using: :btree
  add_index "message3s", ["user_id"], name: "index_message3s_on_user_id", using: :btree

  create_table "message4s", force: :cascade do |t|
    t.integer  "user_id",    limit: 4
    t.integer  "opinion_id", limit: 4
    t.text     "content",    limit: 65535
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.string   "avatar",     limit: 255
  end

  add_index "message4s", ["opinion_id"], name: "index_message4s_on_opinion_id", using: :btree
  add_index "message4s", ["user_id"], name: "index_message4s_on_user_id", using: :btree

  create_table "message5s", force: :cascade do |t|
    t.integer  "user_id",    limit: 4
    t.integer  "other_id",   limit: 4
    t.text     "content",    limit: 65535
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.string   "avatar",     limit: 255
  end

  add_index "message5s", ["other_id"], name: "index_message5s_on_other_id", using: :btree
  add_index "message5s", ["user_id"], name: "index_message5s_on_user_id", using: :btree

  create_table "message6s", force: :cascade do |t|
    t.integer  "user_id",    limit: 4
    t.integer  "teach_id",   limit: 4
    t.text     "content",    limit: 65535
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.string   "avatar",     limit: 255
  end

  add_index "message6s", ["teach_id"], name: "index_message6s_on_teach_id", using: :btree
  add_index "message6s", ["user_id"], name: "index_message6s_on_user_id", using: :btree

  create_table "messages", force: :cascade do |t|
    t.integer  "user_id",    limit: 4
    t.integer  "chat_id",    limit: 4
    t.text     "content",    limit: 65535
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.string   "avatar",     limit: 255
  end

  add_index "messages", ["chat_id"], name: "index_messages_on_chat_id", using: :btree
  add_index "messages", ["user_id"], name: "index_messages_on_user_id", using: :btree

  create_table "opinions", force: :cascade do |t|
    t.string   "title",      limit: 255
    t.text     "body",       limit: 65535
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.integer  "user_id",    limit: 4
  end

  create_table "others", force: :cascade do |t|
    t.string   "title",      limit: 255
    t.text     "body",       limit: 65535
    t.integer  "user_id",    limit: 4
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "teaches", force: :cascade do |t|
    t.string   "title",      limit: 255
    t.text     "body",       limit: 65535
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.integer  "user_id",    limit: 4
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  limit: 255, default: "",    null: false
    t.string   "encrypted_password",     limit: 255, default: "",    null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,   default: 0,     null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.datetime "created_at",                                         null: false
    t.datetime "updated_at",                                         null: false
    t.string   "name",                   limit: 255
    t.boolean  "admin",                              default: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  add_foreign_key "message2s", "find_works"
  add_foreign_key "message2s", "users"
  add_foreign_key "message3s", "labs"
  add_foreign_key "message3s", "users"
  add_foreign_key "message4s", "opinions"
  add_foreign_key "message4s", "users"
  add_foreign_key "message5s", "others"
  add_foreign_key "message5s", "users"
  add_foreign_key "message6s", "teaches"
  add_foreign_key "message6s", "users"
  add_foreign_key "messages", "chats"
  add_foreign_key "messages", "users"
end
