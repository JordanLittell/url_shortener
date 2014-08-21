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

ActiveRecord::Schema.define(version: 20140821053411) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "shortened_urls", force: true do |t|
    t.string  "short_url"
    t.string  "long_url"
    t.integer "submitter_id"
    t.time    "created_at"
  end

  add_index "shortened_urls", ["short_url"], name: "short_url_id", using: :btree
  add_index "shortened_urls", ["submitter_id"], name: "submitter_id_ix", using: :btree

  create_table "users", force: true do |t|
    t.string   "email",      null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "user_email_id", using: :btree

  create_table "visits", force: true do |t|
    t.integer "visitor_id",   null: false
    t.integer "short_url_id", null: false
  end

  add_index "visits", ["short_url_id"], name: "short_url_id_ix", using: :btree
  add_index "visits", ["visitor_id"], name: "visitor_id_ix", using: :btree

end
