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

ActiveRecord::Schema.define(version: 2021_03_27_000849) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "pokemons", force: :cascade do |t|
    t.integer "number"
    t.string "name"
    t.integer "height"
    t.integer "weight"
    t.string "type"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.text "move_list", default: [], array: true
    t.text "ability_list", default: [], array: true
  end

  create_table "trainer_pokemons", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "trainer_id"
    t.bigint "pokemon_id"
    t.string "pokemon_list"
    t.index ["pokemon_id"], name: "index_trainer_pokemons_on_pokemon_id"
    t.index ["trainer_id"], name: "index_trainer_pokemons_on_trainer_id"
  end

  create_table "trainers", force: :cascade do |t|
    t.string "name"
    t.integer "age"
    t.string "gender"
    t.string "favourite_pokemon"
    t.string "hometown"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "trainer_pokemons", "pokemons"
  add_foreign_key "trainer_pokemons", "trainers"
end
