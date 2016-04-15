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

ActiveRecord::Schema.define(version: 20160414110136) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "clusters", force: :cascade do |t|
    t.string   "cluster"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "events", force: :cascade do |t|
    t.string   "event_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "mailerlists", force: :cascade do |t|
    t.integer  "mailername_id"
    t.integer  "mailertype_id"
    t.text     "description"
    t.string   "recepient"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "mailernames", force: :cascade do |t|
    t.string   "mailer_name"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "mailertypes", force: :cascade do |t|
    t.string   "mailer_type"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "mclusters", force: :cascade do |t|
    t.string   "cluster_name"
    t.boolean  "feature"
    t.integer  "members"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "reports", force: :cascade do |t|
    t.integer  "invite_sent"
    t.integer  "total_recepient"
    t.integer  "attending"
    t.integer  "unable_to_attend"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.integer  "mailername_id"
  end

  create_table "sendmails", force: :cascade do |t|
    t.string   "send_from"
    t.string   "send_to"
    t.text     "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "typeofusers", force: :cascade do |t|
    t.string   "user_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "userdetails", force: :cascade do |t|
    t.string   "first_name"
    t.string   "middle_name"
    t.string   "last_name"
    t.string   "salutation"
    t.string   "organization"
    t.string   "department"
    t.string   "work_address"
    t.string   "work_mobile"
    t.string   "work_fax"
    t.string   "work_email"
    t.string   "work_internet"
    t.string   "assistant_name"
    t.string   "assistant_tel_no"
    t.text     "note"
    t.date     "date_of_birth"
    t.string   "nationality"
    t.string   "event_invited"
    t.string   "event_attended"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.integer  "cluster_id"
    t.integer  "typeofuser_id"
  end

  create_table "usermailers", force: :cascade do |t|
    t.string   "send_from"
    t.string   "send_to"
    t.text     "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

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
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.boolean  "admin"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
