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

ActiveRecord::Schema.define(version: 20151113204847) do

  create_table "blog_entries", force: :cascade do |t|
    t.string   "title"
    t.string   "excerpt"
    t.text     "words"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "slug"
  end

  add_index "blog_entries", ["slug"], name: "index_blog_entries_on_slug", unique: true

  create_table "portfolio_images", force: :cascade do |t|
    t.integer  "portfolio_piece_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "pic_file_name"
    t.string   "pic_content_type"
    t.integer  "pic_file_size"
    t.datetime "pic_updated_at"
    t.string   "width"
    t.integer  "order"
    t.string   "color"
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
    t.integer  "order"
    t.string   "slug"
  end

  add_index "portfolio_pieces", ["slug"], name: "index_portfolio_pieces_on_slug", unique: true

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
