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

ActiveRecord::Schema.define(version: 2019_02_24_092103) do

  create_table "members", id: :string, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci", comment: "メンバー", force: :cascade do |t|
    t.string "name", null: false
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "projects", id: :string, limit: 36, comment: "プライマリキー", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci", comment: "プロジェクト", force: :cascade do |t|
    t.string "name", null: false, comment: "プロジェクト名"
    t.text "description", comment: "概要"
    t.date "start_on", comment: "開始日"
    t.date "end_on", comment: "終了日"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tasks", id: :string, limit: 36, comment: "プライマリキー", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci", force: :cascade do |t|
    t.string "project_id"
    t.string "name", null: false
    t.text "description", comment: "概要"
    t.integer "status", default: 0, comment: "ステータス"
    t.date "start_on", comment: "開始日"
    t.date "end_on", comment: "終了日"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["project_id"], name: "index_tasks_on_project_id"
  end

  add_foreign_key "tasks", "projects"
end
