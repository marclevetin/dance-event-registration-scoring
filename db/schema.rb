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

ActiveRecord::Schema.define(version: 20170802035438) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "contests", force: :cascade do |t|
    t.string   "title",      null: false
    t.datetime "time"
    t.integer  "event_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["event_id"], name: "index_contests_on_event_id", using: :btree
  end

  create_table "events", force: :cascade do |t|
    t.string   "event_name",          null: false
    t.date     "start_date"
    t.date     "end_date"
    t.string   "location"
    t.string   "event_director"
    t.string   "contest_coordinator"
    t.string   "head_judge"
    t.text     "event_disclaimer"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

  create_table "judges", force: :cascade do |t|
    t.string   "first_name", null: false
    t.string   "last_name",  null: false
    t.integer  "event_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["event_id"], name: "index_judges_on_event_id", using: :btree
  end

  create_table "people", force: :cascade do |t|
    t.string   "first_name",     null: false
    t.string   "last_name",      null: false
    t.string   "email"
    t.integer  "wsdc_id"
    t.string   "street"
    t.string   "city"
    t.string   "state_province"
    t.string   "postal_code"
    t.integer  "event_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.index ["event_id"], name: "index_people_on_event_id", using: :btree
  end

end
