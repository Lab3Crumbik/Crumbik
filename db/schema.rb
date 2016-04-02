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

ActiveRecord::Schema.define(version: 20160402221128) do

  create_table "advertising_campaigns", force: :cascade do |t|
    t.string   "name",                limit: 255
    t.string   "info",                limit: 255
    t.date     "date"
    t.string   "image",               limit: 255
    t.string   "avatar_file_name",    limit: 255
    t.string   "avatar_content_type", limit: 255
    t.integer  "avatar_file_size",    limit: 4
    t.datetime "avatar_updated_at"
    t.integer  "product_id",          limit: 4
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
  end

  add_index "advertising_campaigns", ["product_id"], name: "index_advertising_campaigns_on_product_id", using: :btree

  create_table "countries", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.string   "status",     limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "events", force: :cascade do |t|
    t.string   "info",       limit: 255
    t.string   "name",       limit: 255
    t.date     "date"
    t.string   "status",     limit: 255
    t.integer  "user_id",    limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_index "events", ["user_id"], name: "index_events_on_user_id", using: :btree

  create_table "identities", force: :cascade do |t|
    t.integer  "user_id",      limit: 4
    t.string   "provider",     limit: 255
    t.string   "accesstoken",  limit: 255
    t.string   "refreshtoken", limit: 255
    t.string   "uid",          limit: 255
    t.string   "name",         limit: 255
    t.string   "email",        limit: 255
    t.string   "nickname",     limit: 255
    t.string   "image",        limit: 255
    t.string   "phone",        limit: 255
    t.string   "urls",         limit: 255
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.string   "rol",          limit: 255
  end

  add_index "identities", ["user_id"], name: "index_identities_on_user_id", using: :btree

  create_table "interactions", force: :cascade do |t|
    t.string   "content",    limit: 255
    t.date     "date"
    t.integer  "product_id", limit: 4
    t.integer  "user_id",    limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_index "interactions", ["product_id"], name: "index_interactions_on_product_id", using: :btree
  add_index "interactions", ["user_id"], name: "index_interactions_on_user_id", using: :btree

  create_table "menu_options", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "menus_rols", force: :cascade do |t|
    t.integer "menu_option_id", limit: 4
    t.integer "rol_id",         limit: 4
  end

  add_index "menus_rols", ["menu_option_id"], name: "index_menus_rols_on_menu_option_id", using: :btree
  add_index "menus_rols", ["rol_id"], name: "index_menus_rols_on_rol_id", using: :btree

  create_table "organizations", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.string   "email",      limit: 255
    t.text     "slogan",     limit: 65535
    t.text     "mission",    limit: 65535
    t.text     "vision",     limit: 65535
    t.string   "phone",      limit: 255
    t.boolean  "status"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.integer  "country_id", limit: 4
  end

  add_index "organizations", ["country_id"], name: "index_organizations_on_country_id", using: :btree

  create_table "payments", force: :cascade do |t|
    t.string   "amount",           limit: 255
    t.string   "identification",   limit: 255
    t.string   "card_number",      limit: 255
    t.string   "expiration_month", limit: 255
    t.string   "expiration_year",  limit: 255
    t.string   "security_code",    limit: 255
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
  end

  create_table "products", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.string   "info",       limit: 255
    t.float    "price",      limit: 24
    t.string   "image",      limit: 255
    t.string   "status",     limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "profiles", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.string   "lastname",   limit: 255
    t.string   "sex",        limit: 255
    t.integer  "user_id",    limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_index "profiles", ["user_id"], name: "index_profiles_on_user_id", using: :btree

  create_table "rols", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.string   "status",     limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "rols_users", force: :cascade do |t|
    t.integer "rol_id",  limit: 4
    t.integer "user_id", limit: 4
  end

  add_index "rols_users", ["rol_id"], name: "index_rols_users_on_rol_id", using: :btree
  add_index "rols_users", ["user_id"], name: "index_rols_users_on_user_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "email",                  limit: 255,             null: false
    t.string   "encrypted_password",     limit: 255
    t.string   "name",                   limit: 255
    t.string   "lastname",               limit: 255
    t.date     "birthdate"
    t.string   "uid",                    limit: 255
    t.string   "provider",               limit: 255
    t.string   "rol",                    limit: 255
    t.string   "username",               limit: 255
    t.string   "oauth_token",            limit: 255
    t.datetime "oauth_expires_at"
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,   default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.datetime "created_at",                                     null: false
    t.datetime "updated_at",                                     null: false
    t.integer  "country_id",             limit: 4
    t.integer  "rol_id",                 limit: 4
  end

  add_index "users", ["country_id"], name: "index_users_on_country_id", using: :btree
  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  add_index "users", ["rol_id"], name: "index_users_on_rol_id", using: :btree

  add_foreign_key "advertising_campaigns", "products"
  add_foreign_key "events", "users"
  add_foreign_key "identities", "users"
  add_foreign_key "interactions", "products"
  add_foreign_key "interactions", "users"
  add_foreign_key "menus_rols", "menu_options"
  add_foreign_key "menus_rols", "rols"
  add_foreign_key "organizations", "countries"
  add_foreign_key "profiles", "users"
  add_foreign_key "rols_users", "rols"
  add_foreign_key "rols_users", "users"
  add_foreign_key "users", "countries"
  add_foreign_key "users", "rols"
end
