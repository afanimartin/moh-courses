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

ActiveRecord::Schema[7.1].define(version: 2024_11_26_180117) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "addresses", id: :string, force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "colleges", id: :string, force: :cascade do |t|
    t.string "name", null: false
    t.text "about", default: ""
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "courses", id: :string, force: :cascade do |t|
    t.string "title", null: false
    t.text "description", null: false
    t.string "academic_year", null: false
    t.string "awarding_body", null: false
    t.string "length", null: false
    t.string "award_title", null: false
    t.text "competencies", null: false
    t.text "outcomes", null: false
    t.text "contents", null: false
    t.text "teaching_mode", null: false
    t.text "assessment_strategy", null: false
    t.integer "tutor_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["title"], name: "index_courses_on_title", unique: true
  end

  create_table "enrollments", id: :string, force: :cascade do |t|
    t.integer "course_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", id: :string, force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "role", default: "student", null: false
    t.string "phone"
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.boolean "account_complete", default: false
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "address_id"
    t.string "college_id"
    t.index ["email"], name: "index_users_on_email", unique: true
  end

  add_foreign_key "users", "addresses"
  add_foreign_key "users", "colleges"
end
