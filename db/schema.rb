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

ActiveRecord::Schema.define(version: 2021_06_24_150009) do

  create_table "goal_categories", force: :cascade do |t|
    t.string "category"
    t.string "unit"
    t.string "icon"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "new_user_surveys", force: :cascade do |t|
    t.integer "user_id"
    t.string "q_1"
    t.string "q_2"
    t.string "q_3"
    t.string "q_4"
    t.string "q_5"
    t.string "q_6"
    t.string "q_7"
    t.string "q_8"
    t.string "q_9"
    t.string "q_10"
    t.string "q_11"
    t.string "q_12"
    t.string "q_13"
    t.string "q_14"
    t.string "q_15"
    t.string "q_16"
    t.string "q_17"
    t.string "q_18"
    t.string "q_19"
    t.string "q_20"
    t.string "q_21"
    t.string "q_22"
    t.string "q_23"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "questions", force: :cascade do |t|
    t.string "question"
    t.string "input_type"
    t.string "answer_options"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email"
    t.string "password_digest"
    t.string "first_name"
    t.string "last_name"
    t.string "dob"
    t.integer "goals_count"
    t.integer "courses_count"
    t.integer "pain_diaries_count"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "videos", force: :cascade do |t|
    t.string "name"
    t.string "display_name"
    t.string "category"
    t.string "video_ref"
    t.string "course"
    t.string "seconds"
    t.string "pre_video_action"
    t.string "post_video_action"
    t.integer "lessons_count"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
