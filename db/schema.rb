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

ActiveRecord::Schema.define(version: 2022_08_25_214401) do

  create_table "items", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.integer "quantity"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.boolean "published"
    t.boolean "#<ActiveRecord::ConnectionAdapters::SQLite3::TableDefinition:0x00007fe3de985e08>"
  end

  create_table "scenarios", force: :cascade do |t|
    t.string "name"
    t.string "location"
    t.boolean "active"
    t.integer "players"
    t.datetime "starts_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
