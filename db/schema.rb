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

ActiveRecord::Schema[7.0].define(version: 2023_03_14_055431) do
  create_table "articles", force: :cascade do |t|
    t.string "title"
    t.text "body"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "status"
  end

  create_table "authors", force: :cascade do |t|
    t.string "name"
    t.integer "author_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "books", force: :cascade do |t|
    t.string "name"
    t.integer "book_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "comments", force: :cascade do |t|
    t.string "commenter"
    t.text "body"
    t.integer "article_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "status"
    t.index ["article_id"], name: "index_comments_on_article_id"
  end

  create_table "companies", force: :cascade do |t|
    t.string "comp_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "company_id"
  end

  create_table "countries", force: :cascade do |t|
    t.string "name"
    t.string "state_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "customers_products", id: false, force: :cascade do |t|
    t.integer "customer_id", null: false
    t.integer "product_id", null: false
  end

  create_table "employees", force: :cascade do |t|
    t.string "emp_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "employee_id"
  end

  create_table "products", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "part_number"
    t.decimal "price"
  end

  create_table "states", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "email"
    t.string "login"
  end

  add_foreign_key "comments", "articles"
end