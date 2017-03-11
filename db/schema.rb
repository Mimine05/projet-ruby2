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

ActiveRecord::Schema.define(version: 20170311223702) do

  create_table "entreprises", force: :cascade do |t|
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
    t.string   "name"
    t.string   "description"
    t.string   "activite"
    t.index ["email"], name: "index_entreprises_on_email", unique: true
    t.index ["reset_password_token"], name: "index_entreprises_on_reset_password_token", unique: true
  end

  create_table "etus", force: :cascade do |t|
    t.integer "user_id"
    t.integer "experience_id"
    t.index ["experience_id"], name: "index_etus_on_experience_id"
    t.index ["user_id"], name: "index_etus_on_user_id"
  end

  create_table "experiences", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.string   "description"
    t.string   "annee"
    t.string   "lieu"
  end

  create_table "formations", force: :cascade do |t|
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.string   "name"
    t.string   "etablissement"
    t.string   "annee"
    t.string   "description"
  end

  create_table "ftus", force: :cascade do |t|
    t.integer "user_id"
    t.integer "formation_id"
    t.index ["formation_id"], name: "index_ftus_on_formation_id"
    t.index ["user_id"], name: "index_ftus_on_user_id"
  end

  create_table "interets", force: :cascade do |t|
    t.string   "categorie"
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "itus", force: :cascade do |t|
    t.integer "user_id"
    t.integer "interet_id"
    t.index ["interet_id"], name: "index_itus_on_interet_id"
    t.index ["user_id"], name: "index_itus_on_user_id"
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
    t.string   "username"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index ["username"], name: "index_users_on_username", unique: true
  end

end
