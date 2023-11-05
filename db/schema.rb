# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2023_11_05_104827) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "lectures", force: :cascade do |t|
    t.string "name"
    t.string "desc"
    t.float "hours"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "offline_licenses", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "lecture_id", null: false
    t.float "hours"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["lecture_id"], name: "index_offline_licenses_on_lecture_id"
    t.index ["user_id"], name: "index_offline_licenses_on_user_id"
  end

  create_table "user_lectures", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "lecture_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["lecture_id"], name: "index_user_lectures_on_lecture_id"
    t.index ["user_id"], name: "index_user_lectures_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "tel"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "offline_licenses", "lectures"
  add_foreign_key "offline_licenses", "users"
  add_foreign_key "user_lectures", "lectures"
  add_foreign_key "user_lectures", "users"
end
