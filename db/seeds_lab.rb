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

DATA_bands = {
  :band_keys =>
    ["name", "url", "notes"],
  :bands => [
  ['Devo', '#', 'whip it good'],
  ['ACDC', '#', 'we rock' ],
  ['Mark Greel Band', 'http://www.markgreelband.com', 'best in live music']
  ['Afrika Gente', 'http://www.afrikagente.com', 'Latin jazz, African drumming']
  ['Vibra Tropicale', 'https://www.facebook.com/events/203120453618083/', 'Latin jazz']
  ['Sabor Picante', 'http://saborpicante.com/', 'pure Salsa']
  ['BStrio', 'http://www.bradsmithtrio.com', 'tunes you know, grooved differently']
  ]
}

def make_bands
  DATA_bands[:bands].each do |band|
    new_band = Band.new
    band.each_with_index do |attribute, i|
      new_band.send(DATA_bands[:band_keys][i]+"=", attribute)
    end
    new_band.save
  end
end