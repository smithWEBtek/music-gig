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

  create_table "instruments", force: :cascade do |t|
    t.string "name"
    t.string "notes"
  end

  create_table "lesson_resources", force: :cascade do |t|
    t.integer "resource_id"
    t.integer "lesson_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "lessons", force: :cascade do |t|
    t.date "date"
    t.string "notes"
    t.integer "teacher_id", default: 1
    t.integer "student_id", default: 1
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "logs", force: :cascade do |t|
    t.integer "teacher_id", default: 1
    t.integer "student_id", default: 1
    t.integer "resource_id", default: 1
    t.integer "lesson_id", default: 1
    t.text "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "resources", force: :cascade do |t|
    t.string "title"
    t.string "category"
    t.string "description"
    t.string "format"
    t.string "location"
    t.string "url", default: "no_url_given"
    t.boolean "active", default: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "song_resources", force: :cascade do |t|
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

  create_table "students", force: :cascade do |t|
    t.string "firstname"
    t.string "lastname"
    t.string "email"
    t.integer "level"
    t.integer "teacher_id"
    t.boolean "active", default: true
    t.integer "likes", default: 0
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "teachers", force: :cascade do |t|
    t.string "firstname"
    t.string "lastname"
    t.string "email"
    t.boolean "active", default: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
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
