# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_11_17_020007) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "job_statuses", force: :cascade do |t|
    t.string "state", default: "not_running", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "tag_time_entries", force: :cascade do |t|
    t.bigint "tag_id", null: false
    t.bigint "time_entry_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["tag_id"], name: "index_tag_time_entries_on_tag_id"
    t.index ["time_entry_id"], name: "index_tag_time_entries_on_time_entry_id"
  end

  create_table "tags", force: :cascade do |t|
    t.string "name"
    t.float "budget"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["name"], name: "index_tags_on_name"
  end

  create_table "time_entries", force: :cascade do |t|
    t.text "notes"
    t.float "hours"
    t.string "client"
    t.string "project"
    t.date "date"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "tag_time_entries", "tags"
  add_foreign_key "tag_time_entries", "time_entries"
end
