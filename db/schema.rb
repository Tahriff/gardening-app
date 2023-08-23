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

ActiveRecord::Schema[7.0].define(version: 2023_08_23_092401) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "parcels", force: :cascade do |t|
    t.float "size_sqm", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "parcels_species", id: false, force: :cascade do |t|
    t.bigint "parcel_id", null: false
    t.bigint "species_id", null: false
    t.float "sqm_size", default: 0.0
    t.index ["parcel_id", "species_id"], name: "index_parcels_species_on_parcel_id_and_species_id"
    t.index ["species_id", "parcel_id"], name: "index_parcels_species_on_species_id_and_parcel_id"
  end

  create_table "species", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.string "picture_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
