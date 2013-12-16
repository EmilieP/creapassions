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

ActiveRecord::Schema.define(version: 20131216114413) do

  create_table "books", force: true do |t|
    t.string   "title"
    t.string   "subtitle"
    t.integer  "page_count"
    t.integer  "color_page_count"
    t.integer  "bw_page_count"
    t.string   "isbn"
    t.string   "ean"
    t.string   "price_ttc"
    t.datetime "publication_expected_at"
    t.datetime "publication_effective_at"
    t.text     "c4_extended"
    t.text     "c4_reduced"
    t.text     "c4_argu"
    t.boolean  "visible"
    t.integer  "appearance_percentage"
    t.boolean  "appearance_random"
    t.boolean  "showroom"
    t.text     "description"
    t.string   "image_url"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
