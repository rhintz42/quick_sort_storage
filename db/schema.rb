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

ActiveRecord::Schema.define(version: 20130803040419) do

  create_table "nodes", force: true do |t|
    t.string   "title"
    t.text     "description"
    t.string   "picture"
    t.string   "url"
    t.boolean  "is_in_storage"
    t.boolean  "is_borrowable"
    t.boolean  "is_sellable"
    t.integer  "tree_id"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "nodes", ["tree_id"], name: "index_nodes_on_tree_id"
  add_index "nodes", ["user_id"], name: "index_nodes_on_user_id"

  create_table "trees", force: true do |t|
    t.string   "title"
    t.string   "picture"
    t.string   "tree_type"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "trees", ["user_id"], name: "index_trees_on_user_id"

  create_table "users", force: true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "picture"
    t.string   "username"
    t.string   "password_digest"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
