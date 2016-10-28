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

ActiveRecord::Schema.define(version: 20161028034845) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "courses", force: :cascade do |t|
    t.string   "Course_name"
    t.string   "CS_duration"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "departments", force: :cascade do |t|
    t.string   "Dep_name"
    t.string   "Dep_location"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "instructors", force: :cascade do |t|
    t.string   "Ins_name"
    t.string   "F_name"
    t.string   "Cell"
    t.string   "Email"
    t.integer  "department_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["department_id"], name: "index_instructors_on_department_id", using: :btree
  end

  create_table "payements", force: :cascade do |t|
    t.integer  "Ammount"
    t.string   "Discount"
    t.integer  "Total_fee"
    t.integer  "Remaining_fee"
    t.date     "Pay_date"
    t.integer  "student_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["student_id"], name: "index_payements_on_student_id", using: :btree
  end

  create_table "st_has_deps", force: :cascade do |t|
    t.integer  "department_id"
    t.integer  "student_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["department_id"], name: "index_st_has_deps_on_department_id", using: :btree
    t.index ["student_id"], name: "index_st_has_deps_on_student_id", using: :btree
  end

  create_table "students", force: :cascade do |t|
    t.string   "St_name"
    t.string   "F_name"
    t.string   "Gender"
    t.text     "Address"
    t.string   "Cell"
    t.string   "Local"
    t.string   "CNIC"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "studnts", force: :cascade do |t|
    t.string   "St_name"
    t.string   "F_name"
    t.string   "Gender"
    t.text     "Address"
    t.string   "Cell"
    t.string   "Local"
    t.string   "CNIC"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "takes", force: :cascade do |t|
    t.integer  "student_id"
    t.integer  "course_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["course_id"], name: "index_takes_on_course_id", using: :btree
    t.index ["student_id"], name: "index_takes_on_student_id", using: :btree
  end

  create_table "teaches", force: :cascade do |t|
    t.integer  "instructor_id"
    t.integer  "course_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["course_id"], name: "index_teaches_on_course_id", using: :btree
    t.index ["instructor_id"], name: "index_teaches_on_instructor_id", using: :btree
  end

  add_foreign_key "instructors", "departments"
  add_foreign_key "payements", "students"
  add_foreign_key "st_has_deps", "departments"
  add_foreign_key "st_has_deps", "students"
  add_foreign_key "takes", "courses"
  add_foreign_key "takes", "students"
  add_foreign_key "teaches", "courses"
  add_foreign_key "teaches", "instructors"
end
