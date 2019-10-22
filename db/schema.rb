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

ActiveRecord::Schema.define(version: 2019_10_12_020715) do

  create_table "bricks", force: :cascade do |t|
    t.string "name"
    t.string "table_type"
    t.string "name_plural"
    t.string "parent_dir"
    t.string "api_path"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "dfields", force: :cascade do |t|
    t.string "field_name"
    t.string "field_type"
    t.boolean "is_required"
    t.boolean "is_show_in_list"
    t.boolean "is_editable"
    t.string "api"
    t.integer "brick_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["brick_id"], name: "index_dfields_on_brick_id"
  end

end
