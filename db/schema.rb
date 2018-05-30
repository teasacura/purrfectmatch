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

ActiveRecord::Schema.define(version: 2018_05_30_142758) do

  create_table "admins", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password_digest"
  end

  create_table "adopter_cats", force: :cascade do |t|
    t.integer "adopter_id"
    t.integer "cat_id"
    t.index ["adopter_id"], name: "index_adopter_cats_on_adopter_id"
    t.index ["cat_id"], name: "index_adopter_cats_on_cat_id"
  end

  create_table "adopters", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password_digest"
    t.integer "age"
    t.string "description"
    t.string "location"
    t.integer "min_age_pref"
    t.integer "max_age_pref"
    t.string "breed_pref"
    t.string "temperament_pref"
    t.integer "num_of_cats"
  end

  create_table "cats", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password_digest"
    t.integer "age"
    t.string "description"
    t.string "location"
    t.string "breed"
    t.string "temperament"
    t.string "sociability"
  end

end
