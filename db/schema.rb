# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_11_23_232631) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "acts", force: :cascade do |t|
    t.integer "number"
    t.bigint "script_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["script_id"], name: "index_acts_on_script_id"
  end

  create_table "locations", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.string "city"
    t.string "state"
    t.integer "zip"
    t.string "phone"
    t.string "room"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "rehearsal_blocks", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "role_appearances", force: :cascade do |t|
    t.bigint "rehearsal_block_id"
    t.bigint "role_id"
    t.index ["rehearsal_block_id"], name: "index_role_appearances_on_rehearsal_block_id"
    t.index ["role_id"], name: "index_role_appearances_on_role_id"
  end

  create_table "roles", force: :cascade do |t|
    t.string "name"
    t.bigint "script_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["script_id"], name: "index_roles_on_script_id"
  end

  create_table "scenes", force: :cascade do |t|
    t.string "name"
    t.bigint "act_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["act_id"], name: "index_scenes_on_act_id"
  end

  create_table "scripts", force: :cascade do |t|
    t.string "name"
    t.string "author"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "theatrical_productions", force: :cascade do |t|
    t.string "title"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "script_id"
    t.index ["script_id"], name: "index_theatrical_productions_on_script_id"
  end

  add_foreign_key "theatrical_productions", "scripts"
end
