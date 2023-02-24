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

ActiveRecord::Schema[7.0].define(version: 2023_02_24_184740) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "action_text_rich_texts", force: :cascade do |t|
    t.string "name", null: false
    t.string "body"
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["record_type", "record_id", "name"], name: "index_action_text_rich_texts_uniqueness", unique: true
  end

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.string "metadata"
    t.string "service_name", null: false
    t.bigint "byte_size", null: false
    t.string "checksum"
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "active_storage_variant_records", force: :cascade do |t|
    t.bigint "blob_id", null: false
    t.string "variation_digest", null: false
    t.index ["blob_id", "variation_digest"], name: "index_active_storage_variant_records_uniqueness", unique: true
  end

  create_table "beads", force: :cascade do |t|
    t.string "number"
    t.string "color"
    t.string "pattern"
    t.string "image"
    t.string "stash"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "brand"
  end

  create_table "beads_patterns", id: false, force: :cascade do |t|
    t.bigint "pattern_id", null: false
    t.bigint "bead_id", null: false
    t.index ["bead_id"], name: "index_beads_patterns_on_bead_id"
    t.index ["pattern_id"], name: "index_beads_patterns_on_pattern_id"
  end

  create_table "dmcs", force: :cascade do |t|
    t.string "number"
    t.string "color"
    t.string "rgb_value"
    t.string "image"
    t.string "stash"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "metallics", force: :cascade do |t|
    t.string "brand"
    t.string "thread_type"
    t.string "number"
    t.string "color"
    t.string "pattern"
    t.string "image"
    t.string "stash"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "metallic_type"
  end

  create_table "metallics_patterns", id: false, force: :cascade do |t|
    t.bigint "metallic_id", null: false
    t.bigint "pattern_id", null: false
    t.index ["metallic_id"], name: "index_metallics_patterns_on_metallic_id"
    t.index ["pattern_id"], name: "index_metallics_patterns_on_pattern_id"
  end

  create_table "patterns", force: :cascade do |t|
    t.string "brand"
    t.string "pattern_name"
    t.string "number"
    t.string "size"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "image"
    t.integer "user_id"
    t.index ["user_id"], name: "index_patterns_on_user_id"
  end

  create_table "patterns_silks", id: false, force: :cascade do |t|
    t.bigint "pattern_id", null: false
    t.bigint "silk_id", null: false
    t.index ["pattern_id"], name: "index_patterns_silks_on_pattern_id"
    t.index ["silk_id"], name: "index_patterns_silks_on_silk_id"
  end

  create_table "silks", force: :cascade do |t|
    t.string "brand"
    t.string "thread_type"
    t.string "number"
    t.string "color"
    t.string "pattern"
    t.string "image"
    t.string "stash"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "views"
    t.integer "role", default: 0
    t.boolean "admin", default: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "active_storage_variant_records", "active_storage_blobs", column: "blob_id"
end
