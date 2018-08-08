# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20180808020737) do

  create_table "job_groups", force: :cascade do |t|
    t.string "group"
    t.float  "pay"
  end

  create_table "reports", force: :cascade do |t|
    t.string "name"
  end

  create_table "work_logs", force: :cascade do |t|
    t.string  "employee_id"
    t.date    "date"
    t.float   "hours"
    t.integer "reports_id"
    t.integer "job_groups_id"
  end

  add_index "work_logs", ["job_groups_id"], name: "index_work_logs_on_job_groups_id"
  add_index "work_logs", ["reports_id"], name: "index_work_logs_on_reports_id"

end
