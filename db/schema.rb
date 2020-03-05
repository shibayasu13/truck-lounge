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

ActiveRecord::Schema.define(version: 2020_03_05_102258) do

  create_table "admins", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_admins_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admins_on_reset_password_token", unique: true
  end

  create_table "favorites", force: :cascade do |t|
    t.integer "guest_id"
    t.integer "lounge_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ganres", force: :cascade do |t|
    t.integer "ganre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "guests", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "car"
    t.datetime "deleted_at"
    t.string "profile_image_id"
    t.index ["email"], name: "index_guests_on_email", unique: true
    t.index ["reset_password_token"], name: "index_guests_on_reset_password_token", unique: true
  end

  create_table "likes", force: :cascade do |t|
    t.integer "guest_id"
    t.integer "review_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "lounges", force: :cascade do |t|
    t.integer "guest_id"
    t.integer "prefecture_id"
    t.string "adress"
    t.float "latitude"
    t.float "longtude"
    t.string "business_hours"
    t.text "store_name"
    t.text "parking"
    t.string "bath_time"
    t.integer "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "busines_status"
    t.integer "review_id"
    t.string "store_image_id"
  end

  create_table "perefectures", force: :cascade do |t|
    t.integer "prefecture_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "reviews", force: :cascade do |t|
    t.integer "guest_id"
    t.integer "ganre_id"
    t.text "explanation"
    t.float "rate"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "lounge_id"
    t.string "review_image_id"
  end

end
