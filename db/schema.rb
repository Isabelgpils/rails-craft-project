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

ActiveRecord::Schema[7.0].define(version: 2023_01_03_214704) do
  create_table "beads", force: :cascade do |t|
    t.string "number"
    t.string "pattern"
    t.boolean "stash"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "metallics", force: :cascade do |t|
    t.string "type"
    t.string "number"
    t.string "pattern"
    t.boolean "stash"
    t.string "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "patterns", force: :cascade do |t|
    t.string "brand"
    t.string "number"
    t.string "size"
    t.string "image"
    t.string "thumbnail"
    t.string "name"
    t.boolean "stash"
    t.boolean "finished"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "silks", force: :cascade do |t|
    t.integer "number"
    t.string "brand"
    t.string "color"
    t.string "pattern"
    t.boolean "stash"
    t.string "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
