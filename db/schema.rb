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

ActiveRecord::Schema[7.1].define(version: 2024_04_25_034533) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "calls", force: :cascade do |t|
    t.bigint "opened_by_user_id", null: false
    t.bigint "assigned_user_id", null: false
    t.string "priority", null: false
    t.string "status", null: false
    t.string "call_type", null: false
    t.string "service_level", null: false
    t.text "description", null: false
    t.string "contact_number", null: false
    t.text "conclusion_description"
    t.integer "rating"
    t.text "rating_description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["assigned_user_id"], name: "index_calls_on_assigned_user_id"
    t.index ["opened_by_user_id"], name: "index_calls_on_opened_by_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.bigint "created_by_user_id", null: false
    t.string "name", null: false
    t.string "email", null: false
    t.string "username", null: false
    t.string "password", null: false
    t.string "role", null: false
    t.string "service_level", null: false
    t.datetime "deleted_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["created_by_user_id"], name: "index_users_on_created_by_user_id"
  end

  add_foreign_key "calls", "users", column: "assigned_user_id"
  add_foreign_key "calls", "users", column: "opened_by_user_id"
  add_foreign_key "users", "users", column: "created_by_user_id"
end
