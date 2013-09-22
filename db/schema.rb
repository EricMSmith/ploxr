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

ActiveRecord::Schema.define(version: 20130922171651) do

  create_table "books", force: true do |t|
    t.string   "title"
    t.text     "description"
    t.string   "author"
    t.text     "author_about"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "blurb"
  end

  create_table "chapters", force: true do |t|
    t.string   "title"
    t.text     "description"
    t.integer  "book_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "pages", force: true do |t|
    t.string   "title"
    t.text     "description"
    t.string   "filename"
    t.integer  "chapter_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "position_in_chapter"
  end

end
