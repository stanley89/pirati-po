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

ActiveRecord::Schema.define(version: 20150623155954) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "areas", force: true do |t|
    t.integer  "parent_id"
    t.string   "name"
    t.string   "note"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "functions", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "groups", force: true do |t|
    t.string   "name"
    t.integer  "area_id"
    t.integer  "function_id"
    t.integer  "phpbb_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "groups", ["area_id"], name: "index_groups_on_area_id", using: :btree
  add_index "groups", ["function_id"], name: "index_groups_on_function_id", using: :btree

  create_table "payments", force: true do |t|
    t.integer  "person_id"
    t.datetime "date"
    t.decimal  "amount"
    t.integer  "ks"
    t.integer  "vs"
    t.integer  "ss"
    t.string   "name"
    t.string   "message"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "payments", ["person_id"], name: "index_payments_on_person_id", using: :btree

  create_table "people", force: true do |t|
    t.string   "nick"
    t.string   "degree"
    t.string   "name"
    t.string   "surname"
    t.string   "degree2"
    t.string   "street"
    t.string   "town"
    t.string   "zip"
    t.date     "birth"
    t.string   "email"
    t.string   "phone"
    t.string   "jabber"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "mentor_id"
    t.boolean  "is_mentor"
    t.datetime "member_since"
    t.string   "contact_street"
    t.string   "contact_town"
    t.string   "contact_zip"
    t.string   "citizenship"
  end

  add_index "people", ["mentor_id"], name: "index_people_on_mentor_id", using: :btree

  create_table "people_groups", force: true do |t|
    t.integer  "person_id"
    t.integer  "group_id"
    t.datetime "date_begin"
    t.datetime "date_end"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "people_groups", ["group_id"], name: "index_people_groups_on_group_id", using: :btree
  add_index "people_groups", ["person_id"], name: "index_people_groups_on_person_id", using: :btree

  create_table "people_skills", force: true do |t|
    t.integer  "person_id"
    t.integer  "skill_id"
    t.integer  "favor"
    t.integer  "level"
    t.string   "note"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "people_skills", ["person_id"], name: "index_people_skills_on_person_id", using: :btree
  add_index "people_skills", ["skill_id"], name: "index_people_skills_on_skill_id", using: :btree

  create_table "skills", force: true do |t|
    t.string   "name"
    t.boolean  "ask"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
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
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "openid_identifier"
    t.string   "name"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
