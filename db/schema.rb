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

ActiveRecord::Schema.define(version: 20140518184353) do

  create_table "grades", force: true do |t|
    t.string   "visualprog"
    t.string   "spm"
    t.string   "unixnetwork"
    t.string   "middleware"
    t.string   "xmlweb"
    t.string   "vplab"
    t.string   "unixlab"
    t.float    "gpa"
    t.float    "cgpa"
    t.integer  "tot_credits"
    t.integer  "tot_egrades"
    t.float    "percentage"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "name",             null: false
    t.string   "email",            null: false
    t.string   "mobile",           null: false
    t.string   "crypted_password", null: false
    t.string   "salt",             null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true

  create_table "usersheets", force: true do |t|
    t.integer "semester"
    t.string  "name"
    t.string  "rollnumber"
    t.string  "subject1code"
    t.string  "subject1name"
    t.integer "subject1credit"
    t.string  "subject1grade"
    t.string  "subject2code"
    t.string  "subject2name"
    t.integer "subject2credit"
    t.string  "subject2grade"
    t.string  "subject3code"
    t.string  "subject3name"
    t.integer "subject3credit"
    t.string  "subject3grade"
    t.string  "subject4code"
    t.string  "subject4name"
    t.integer "subject4credit"
    t.string  "subject4grade"
    t.string  "subject5code"
    t.string  "subject5name"
    t.integer "subject5credit"
    t.string  "subject5grade"
    t.string  "subject6code"
    t.string  "subject6name"
    t.integer "subject6credit"
    t.string  "subject6grade"
    t.string  "subject7code"
    t.string  "subject7name"
    t.integer "subject7credit"
    t.string  "subject7grade"
    t.float   "gpa"
    t.float   "cgpa"
    t.integer "tot_credits"
    t.integer "tot_egrades"
    t.float   "percentage"
    t.integer "user_id"
  end

end
