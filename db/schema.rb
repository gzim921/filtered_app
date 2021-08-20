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

ActiveRecord::Schema.define(version: 2021_08_20_134620) do

  create_table "brands", force: :cascade do |t|
    t.string "name"
    t.string "location"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "coffeees", force: :cascade do |t|
    t.string "name"
    t.string "roast"
    t.string "body"
    t.string "acidity"
    t.integer "rating"
    t.string "category"
    t.string "imgurl", default: "https://images.unsplash.com/photo-1497515114629-f71d768fd07c?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2124&q=80"
    t.integer "brand_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["brand_id"], name: "index_coffeees_on_brand_id"
  end

  create_table "reviews", force: :cascade do |t|
    t.integer "rating"
    t.string "style"
    t.string "recipe"
    t.string "adatives"
    t.string "details"
    t.boolean "favorite"
    t.integer "coffeee_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["coffeee_id"], name: "index_reviews_on_coffeee_id"
  end

end
