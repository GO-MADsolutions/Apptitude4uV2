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

ActiveRecord::Schema.define(version: 20160603151734) do

  create_table "ages", force: :cascade do |t|
    t.text     "question"
    t.text     "solution"
    t.string   "optionA"
    t.string   "optionB"
    t.string   "optionC"
    t.string   "optionD"
    t.text     "answer"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "areas", force: :cascade do |t|
    t.text     "question"
    t.text     "solution"
    t.string   "optionA"
    t.string   "optionB"
    t.string   "optionC"
    t.string   "optionD"
    t.text     "answer"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "averages", force: :cascade do |t|
    t.text     "question"
    t.text     "solution"
    t.string   "optionA"
    t.string   "optionB"
    t.string   "optionC"
    t.string   "optionD"
    t.text     "answer"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "bankersdiscounts", force: :cascade do |t|
    t.text     "question"
    t.text     "solution"
    t.string   "optionA"
    t.string   "optionB"
    t.string   "optionC"
    t.string   "opdtionD"
    t.text     "answer"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "boatsandstreams", force: :cascade do |t|
    t.text     "question"
    t.text     "solution"
    t.string   "optionA"
    t.string   "optionB"
    t.string   "optionC"
    t.string   "opdtionD"
    t.text     "answer"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "calendars", force: :cascade do |t|
    t.text     "question"
    t.text     "solution"
    t.string   "optionA"
    t.string   "optionB"
    t.string   "optionC"
    t.string   "opdtionD"
    t.text     "answer"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "chainrules", force: :cascade do |t|
    t.text     "question"
    t.text     "solution"
    t.string   "optionA"
    t.string   "optionB"
    t.string   "optionC"
    t.string   "opdtionD"
    t.text     "answer"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "clocks", force: :cascade do |t|
    t.text     "question"
    t.text     "solution"
    t.string   "optionA"
    t.string   "optionB"
    t.string   "optionC"
    t.string   "opdtionD"
    t.text     "answer"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "compoundinterests", force: :cascade do |t|
    t.text     "question"
    t.text     "solution"
    t.string   "optionA"
    t.string   "optionB"
    t.string   "optionC"
    t.string   "opdtionD"
    t.text     "answer"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "decimalfractions", force: :cascade do |t|
    t.text     "question"
    t.text     "solution"
    t.string   "optionA"
    t.string   "optionB"
    t.string   "optionC"
    t.string   "opdtionD"
    t.text     "answer"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "hcfandlcms", force: :cascade do |t|
    t.text     "question"
    t.text     "solution"
    t.string   "optionA"
    t.string   "optionB"
    t.string   "optionC"
    t.string   "opdtionD"
    t.text     "answer"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "heightanddistances", force: :cascade do |t|
    t.text     "question"
    t.text     "solution"
    t.string   "optionA"
    t.string   "optionB"
    t.string   "optionC"
    t.string   "opdtionD"
    t.text     "answer"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "logarithms", force: :cascade do |t|
    t.text     "question"
    t.text     "solution"
    t.string   "optionA"
    t.string   "optionB"
    t.string   "optionC"
    t.string   "opdtionD"
    t.text     "answer"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "mixtureandalligations", force: :cascade do |t|
    t.text     "question"
    t.text     "solution"
    t.string   "optionA"
    t.string   "optionB"
    t.string   "optionC"
    t.string   "opdtionD"
    t.text     "answer"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "numbers", force: :cascade do |t|
    t.text     "question"
    t.text     "solution"
    t.string   "optionA"
    t.string   "optionB"
    t.string   "optionC"
    t.string   "opdtionD"
    t.text     "answer"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "partnerships", force: :cascade do |t|
    t.text     "question"
    t.text     "solution"
    t.string   "optionA"
    t.string   "optionB"
    t.string   "optionC"
    t.string   "opdtionD"
    t.text     "answer"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "percentages", force: :cascade do |t|
    t.text     "question"
    t.text     "solution"
    t.string   "optionA"
    t.string   "optionB"
    t.string   "optionC"
    t.string   "optionD"
    t.text     "answer"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "permutationandcombinations", force: :cascade do |t|
    t.text     "question"
    t.text     "solution"
    t.string   "optionA"
    t.string   "optionB"
    t.string   "optionC"
    t.string   "opdtionD"
    t.text     "answer"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pipesandcisterns", force: :cascade do |t|
    t.text     "question"
    t.text     "solution"
    t.string   "optionA"
    t.string   "optionB"
    t.string   "optionC"
    t.string   "opdtionD"
    t.text     "answer"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "probabilities", force: :cascade do |t|
    t.text     "question"
    t.text     "solution"
    t.string   "optionA"
    t.string   "optionB"
    t.string   "optionC"
    t.string   "opdtionD"
    t.text     "answer"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "profitandlosses", force: :cascade do |t|
    t.text     "question"
    t.text     "solution"
    t.string   "optionA"
    t.string   "optionB"
    t.string   "optionC"
    t.string   "opdtionD"
    t.text     "answer"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "racesandgames", force: :cascade do |t|
    t.text     "question"
    t.text     "solution"
    t.string   "optionA"
    t.string   "optionB"
    t.string   "optionC"
    t.string   "opdtionD"
    t.text     "answer"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "seriesfindmissingnumbers", force: :cascade do |t|
    t.text     "question"
    t.text     "solution"
    t.string   "optionA"
    t.string   "optionB"
    t.string   "optionC"
    t.string   "opdtionD"
    t.text     "answer"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "seriesoddmanouts", force: :cascade do |t|
    t.text     "question"
    t.text     "solution"
    t.string   "optionA"
    t.string   "optionB"
    t.string   "optionC"
    t.string   "opdtionD"
    t.text     "answer"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "simpleinterests", force: :cascade do |t|
    t.text     "question"
    t.text     "solution"
    t.string   "optionA"
    t.string   "optionB"
    t.string   "optionC"
    t.string   "opdtionD"
    t.text     "answer"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "simplifications", force: :cascade do |t|
    t.text     "question"
    t.text     "solution"
    t.string   "optionA"
    t.string   "optionB"
    t.string   "optionC"
    t.string   "opdtionD"
    t.text     "answer"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "squareandcuberoots", force: :cascade do |t|
    t.text     "question"
    t.text     "solution"
    t.string   "optionA"
    t.string   "optionB"
    t.string   "optionC"
    t.string   "opdtionD"
    t.text     "answer"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "stocksandshares", force: :cascade do |t|
    t.text     "question"
    t.text     "solution"
    t.string   "optionA"
    t.string   "optionB"
    t.string   "optionC"
    t.string   "opdtionD"
    t.text     "answer"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "surdsandindices", force: :cascade do |t|
    t.text     "question"
    t.text     "solution"
    t.string   "optionA"
    t.string   "optionB"
    t.string   "optionC"
    t.string   "opdtionD"
    t.text     "answer"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "timeanddistances", force: :cascade do |t|
    t.text     "question"
    t.text     "solution"
    t.string   "optionA"
    t.string   "optionB"
    t.string   "optionC"
    t.string   "opdtionD"
    t.text     "answer"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "timeandworks", force: :cascade do |t|
    t.text     "question"
    t.text     "solution"
    t.string   "optionA"
    t.string   "optionB"
    t.string   "optionC"
    t.string   "opdtionD"
    t.text     "answer"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "trains", force: :cascade do |t|
    t.text     "question"
    t.text     "solution"
    t.string   "optionA"
    t.string   "optionB"
    t.string   "optionC"
    t.string   "optionD"
    t.text     "answer"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
