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

ActiveRecord::Schema[7.0].define(version: 2022_09_27_053734) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "apun_self_evaluations", force: :cascade do |t|
    t.string "answer1", null: false
    t.string "answer2", null: false
    t.string "answer3", null: false
    t.string "answer4", null: false
    t.string "answer5", null: false
    t.string "answer6", null: false
    t.string "answer7", null: false
    t.string "answer8", null: false
    t.string "answer9", null: false
    t.string "answer10", null: false
    t.string "answer11", null: false
    t.string "answer12", null: false
    t.string "answer13", null: false
    t.string "answer14", null: false
    t.bigint "blog_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["blog_id"], name: "index_apun_self_evaluations_on_blog_id"
  end

  create_table "bibliographies", force: :cascade do |t|
    t.string "author"
    t.text "title"
    t.date "year"
    t.string "city", limit: 85
    t.string "publisher", limit: 85
    t.bigint "blog_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["blog_id"], name: "index_bibliographies_on_blog_id"
  end

  create_table "blogs", force: :cascade do |t|
    t.string "title"
    t.text "body"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "apun_self_evaluations", "blogs"
  add_foreign_key "bibliographies", "blogs"
end
