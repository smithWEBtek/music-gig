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

ActiveRecord::Schema.define(version: 20180822113952) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bands", force: :cascade do |t|
    t.string "name"
    t.string "url"
    t.string "notes"
  end

  create_table "contacts", force: :cascade do |t|
    t.string "fname"
    t.string "lname"
    t.string "phone"
    t.string "email"
    t.string "url"
    t.string "facebook"
    t.string "notes"
  end

  create_table "gigs", force: :cascade do |t|
    t.integer "venue_id"
    t.integer "band_id"
    t.datetime "downbeat"
    t.datetime "load_in"
    t.datetime "tear_down"
    t.boolean "food", default: false
    t.string "dress"
    t.string "parking"
    t.string "gig_notes"
    t.string "fee"
  end

  create_table "instruments", force: :cascade do |t|
    t.string "name"
    t.string "notes"
  end

  create_table "resources", force: :cascade do |t|
    t.integer "song_id"
    t.string "name"
    t.string "format"
    t.string "key"
    t.string "url"
  end

  create_table "songs", force: :cascade do |t|
    t.string "name"
    t.string "notes"
  end

  create_table "venues", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.string "url"
    t.string "phone"
    t.string "booking_email"
    t.integer "main_contact_id"
    t.string "notes"
  end

end
