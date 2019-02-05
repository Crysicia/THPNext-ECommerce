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

ActiveRecord::Schema.define(version: 2019_02_01_173827) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "admins", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_admins_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admins_on_reset_password_token", unique: true
  end

  create_table "carts", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "item_id"
    t.integer "quantity"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["item_id"], name: "index_carts_on_item_id"
    t.index ["user_id"], name: "index_carts_on_user_id"
  end

  create_table "categories", force: :cascade do |t|
    t.string "name", null: false
    t.text "description", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "item_categories", force: :cascade do |t|
    t.bigint "item_id"
    t.bigint "category_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["category_id"], name: "index_item_categories_on_category_id"
    t.index ["item_id", "category_id"], name: "index_item_categories_on_item_id_and_category_id", unique: true
    t.index ["item_id"], name: "index_item_categories_on_item_id"
  end

  create_table "item_orders", force: :cascade do |t|
    t.bigint "item_id"
    t.bigint "order_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "quantity"
    t.index ["item_id", "order_id"], name: "index_item_orders_on_item_id_and_order_id", unique: true
    t.index ["item_id"], name: "index_item_orders_on_item_id"
    t.index ["order_id"], name: "index_item_orders_on_order_id"
  end

  create_table "item_wishlists", force: :cascade do |t|
    t.bigint "item_id"
    t.bigint "wishlist_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["item_id", "wishlist_id"], name: "index_item_wishlists_on_item_id_and_wishlist_id", unique: true
    t.index ["item_id"], name: "index_item_wishlists_on_item_id"
    t.index ["wishlist_id"], name: "index_item_wishlists_on_wishlist_id"
  end

  create_table "items", force: :cascade do |t|
    t.string "name", null: false
    t.text "description", null: false
    t.float "original_price", null: false
    t.string "photo"
    t.integer "quantity", default: 0
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "has_discount", default: false
    t.integer "discount_percentage", default: 0
  end

  create_table "orders", force: :cascade do |t|
    t.float "total_price"
    t.string "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.index ["user_id"], name: "index_orders_on_user_id"
  end

  create_table "profiles", force: :cascade do |t|
    t.string "first_name", default: "0", null: false
    t.string "last_name", default: "0", null: false
    t.string "adress_1", default: "0", null: false
    t.string "adress_2"
    t.integer "postcode", default: 0, null: false
    t.string "region"
    t.string "city", default: "0", null: false
    t.string "country", default: "0", null: false
    t.string "telephone", default: "0", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "profileable_type"
    t.bigint "profileable_id"
    t.index ["profileable_type", "profileable_id"], name: "index_profiles_on_profileable_type_and_profileable_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "wishlists", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "profile_id"
    t.index ["profile_id"], name: "index_wishlists_on_profile_id"
  end

  add_foreign_key "carts", "items"
  add_foreign_key "carts", "users"
  add_foreign_key "orders", "users"
  add_foreign_key "wishlists", "profiles"
end
