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

ActiveRecord::Schema[7.2].define(version: 2024_11_26_065005) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "correct_answers", force: :cascade do |t|
    t.bigint "question_id", null: false
    t.integer "correct_option", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["question_id"], name: "index_correct_answers_on_question_id"
  end

  create_table "questions", force: :cascade do |t|
    t.text "title"
    t.text "optionA"
    t.text "optionB"
    t.text "optionC"
    t.text "optionD"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "quiz_question_mappings", force: :cascade do |t|
    t.bigint "quiz_id", null: false
    t.bigint "question_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["question_id"], name: "index_quiz_question_mappings_on_question_id"
    t.index ["quiz_id"], name: "index_quiz_question_mappings_on_quiz_id"
  end

  create_table "quizzes", force: :cascade do |t|
    t.text "title"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "correct_answers", "questions"
  add_foreign_key "quiz_question_mappings", "questions"
  add_foreign_key "quiz_question_mappings", "quizzes"
end
