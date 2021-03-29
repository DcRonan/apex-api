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

ActiveRecord::Schema.define(version: 2021_03_26_180256) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "sports", force: :cascade do |t|
    t.string "name"
    t.integer "minutes"
    t.integer "distance"
    t.string "notes"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "hours"
    t.integer "seconds"
  end

  create_table "trackers", force: :cascade do |t|
    t.bigint "sport_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["sport_id"], name: "index_trackers_on_sport_id"
  end

  add_foreign_key "trackers", "sports"
end
