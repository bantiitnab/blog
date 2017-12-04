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

ActiveRecord::Schema.define(version: 20171204151940) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "courses", force: :cascade do |t|
    t.string "name"
    t.string "code"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "people", force: :cascade do |t|
    t.string "name"
    t.integer "age"
    t.string "address"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "profession"
    t.string "father_name"
  end

  create_table "posts", force: :cascade do |t|
    t.string "title"
    t.string "body"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "student_courses", force: :cascade do |t|
    t.bigint "student_id"
    t.bigint "course_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["course_id"], name: "index_student_courses_on_course_id"
    t.index ["student_id"], name: "index_student_courses_on_student_id"
  end

  create_table "students", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "x1s", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "x1s_x4s", force: :cascade do |t|
    t.bigint "x1_id"
    t.bigint "x4_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["x1_id"], name: "index_x1s_x4s_on_x1_id"
    t.index ["x4_id"], name: "index_x1s_x4s_on_x4_id"
  end

  create_table "x1x4s", force: :cascade do |t|
    t.bigint "x1_id"
    t.bigint "x4_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["x1_id"], name: "index_x1x4s_on_x1_id"
    t.index ["x4_id"], name: "index_x1x4s_on_x4_id"
  end

  create_table "x2s", force: :cascade do |t|
    t.string "name"
    t.bigint "x1_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["x1_id"], name: "index_x2s_on_x1_id"
  end

  create_table "x3s", force: :cascade do |t|
    t.string "name"
    t.bigint "x1_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["x1_id"], name: "index_x3s_on_x1_id"
  end

  create_table "x4s", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "x5s", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "x6s", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "x7s", force: :cascade do |t|
    t.bigint "x5_id"
    t.bigint "x6_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["x5_id"], name: "index_x7s_on_x5_id"
    t.index ["x6_id"], name: "index_x7s_on_x6_id"
  end

  create_table "y1s", force: :cascade do |t|
    t.string "name"
    t.string "col1"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "y2s", force: :cascade do |t|
    t.string "name"
    t.bigint "y1_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["y1_id"], name: "index_y2s_on_y1_id"
  end

  add_foreign_key "student_courses", "courses"
  add_foreign_key "student_courses", "students"
  add_foreign_key "x1s_x4s", "x1s"
  add_foreign_key "x1s_x4s", "x4s"
  add_foreign_key "x1x4s", "x1s"
  add_foreign_key "x1x4s", "x4s"
  add_foreign_key "x2s", "x1s"
  add_foreign_key "x3s", "x1s"
  add_foreign_key "x7s", "x5s"
  add_foreign_key "x7s", "x6s"
  add_foreign_key "y2s", "y1s"
end
