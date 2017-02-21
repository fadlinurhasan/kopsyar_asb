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

ActiveRecord::Schema.define(version: 20170221164425) do

  create_table "penarikan_histories", force: :cascade do |t|
    t.float    "nilai_penarikan"
    t.string   "catatan"
    t.integer  "tipe_penarikan_id"
    t.integer  "nasabah_id"
    t.integer  "petugas_id"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  add_index "penarikan_histories", ["nasabah_id"], name: "index_penarikan_histories_on_nasabah_id"
  add_index "penarikan_histories", ["petugas_id"], name: "index_penarikan_histories_on_petugas_id"
  add_index "penarikan_histories", ["tipe_penarikan_id"], name: "index_penarikan_histories_on_tipe_penarikan_id"

  create_table "roles", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "simpanan_histories", force: :cascade do |t|
    t.float    "nilai_simpanan"
    t.string   "catatan"
    t.integer  "tipe_simpanan_id"
    t.integer  "nasabah_id"
    t.integer  "petugas_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  add_index "simpanan_histories", ["nasabah_id"], name: "index_simpanan_histories_on_nasabah_id"
  add_index "simpanan_histories", ["petugas_id"], name: "index_simpanan_histories_on_petugas_id"
  add_index "simpanan_histories", ["tipe_simpanan_id"], name: "index_simpanan_histories_on_tipe_simpanan_id"

  create_table "tipe_anggota", force: :cascade do |t|
    t.string   "ident_name"
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tipe_nasabahs", force: :cascade do |t|
    t.string   "ident_name"
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tipe_penarikans", force: :cascade do |t|
    t.string   "ident_name"
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tipe_simpanans", force: :cascade do |t|
    t.string   "ident_name"
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "transaksi_histories", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "simpanan_history_id"
    t.integer  "penarikan_history_id"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  add_index "transaksi_histories", ["penarikan_history_id"], name: "index_transaksi_histories_on_penarikan_history_id"
  add_index "transaksi_histories", ["simpanan_history_id"], name: "index_transaksi_histories_on_simpanan_history_id"
  add_index "transaksi_histories", ["user_id"], name: "index_transaksi_histories_on_user_id"

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
    t.integer  "role_id"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
