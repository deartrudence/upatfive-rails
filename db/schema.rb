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

ActiveRecord::Schema.define(version: 20150907190509) do

  create_table "blog_entries", force: :cascade do |t|
    t.string   "title"
    t.string   "excerpt"
    t.text     "words"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "portfolio_images", force: :cascade do |t|
    t.integer  "portfolio_piece_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "pic_file_name"
    t.string   "pic_content_type"
    t.integer  "pic_file_size"
    t.datetime "pic_updated_at"
  end

  add_index "portfolio_images", ["portfolio_piece_id"], name: "index_portfolio_images_on_portfolio_piece_id"

  create_table "portfolio_pieces", force: :cascade do |t|
    t.string   "title"
    t.string   "excerpt"
    t.text     "description"
    t.string   "client"
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
    t.string   "feature_image_file_name"
    t.string   "feature_image_content_type"
    t.integer  "feature_image_file_size"
    t.datetime "feature_image_updated_at"
  end

end
