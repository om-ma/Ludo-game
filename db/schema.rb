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

ActiveRecord::Schema[7.1].define(version: 2024_03_15_075046) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "base_boxes", force: :cascade do |t|
    t.bigint "board_id"
    t.integer "position"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["board_id"], name: "index_base_boxes_on_board_id"
  end

  create_table "boards", force: :cascade do |t|
    t.string "name"
    t.integer "size"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "dices", force: :cascade do |t|
    t.integer "value"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "games", force: :cascade do |t|
    t.bigint "board_id"
    t.date "date_played"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["board_id"], name: "index_games_on_board_id"
  end

  create_table "house_stop_boxes", force: :cascade do |t|
    t.bigint "base_box_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["base_box_id"], name: "index_house_stop_boxes_on_base_box_id"
  end

  create_table "houses", force: :cascade do |t|
    t.bigint "board_id"
    t.string "color"
    t.string "piece"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["board_id"], name: "index_houses_on_board_id"
  end

  create_table "in_house_safe_boxes", force: :cascade do |t|
    t.bigint "base_box_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["base_box_id"], name: "index_in_house_safe_boxes_on_base_box_id"
  end

  create_table "piece_movements", force: :cascade do |t|
    t.bigint "piece_id"
    t.bigint "game_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["game_id"], name: "index_piece_movements_on_game_id"
    t.index ["piece_id"], name: "index_piece_movements_on_piece_id"
  end

  create_table "pieces", force: :cascade do |t|
    t.bigint "house_id"
    t.integer "position"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["house_id"], name: "index_pieces_on_house_id"
  end

  create_table "player_games", force: :cascade do |t|
    t.bigint "player_id"
    t.bigint "game_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["game_id"], name: "index_player_games_on_game_id"
    t.index ["player_id"], name: "index_player_games_on_player_id"
  end

  create_table "players", force: :cascade do |t|
    t.string "name"
    t.string "color"
    t.integer "game_played"
    t.integer "game_won"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "public_boxes", force: :cascade do |t|
    t.bigint "base_box_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["base_box_id"], name: "index_public_boxes_on_base_box_id"
  end

  create_table "public_stop_boxes", force: :cascade do |t|
    t.bigint "base_box_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["base_box_id"], name: "index_public_stop_boxes_on_base_box_id"
  end

  create_table "turns", force: :cascade do |t|
    t.bigint "player_id"
    t.bigint "game_id"
    t.bigint "dice_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["dice_id"], name: "index_turns_on_dice_id"
    t.index ["game_id"], name: "index_turns_on_game_id"
    t.index ["player_id"], name: "index_turns_on_player_id"
  end

  add_foreign_key "base_boxes", "boards"
  add_foreign_key "games", "boards"
  add_foreign_key "house_stop_boxes", "base_boxes"
  add_foreign_key "houses", "boards"
  add_foreign_key "in_house_safe_boxes", "base_boxes"
  add_foreign_key "piece_movements", "games"
  add_foreign_key "piece_movements", "pieces"
  add_foreign_key "pieces", "houses"
  add_foreign_key "player_games", "games"
  add_foreign_key "player_games", "players"
  add_foreign_key "public_boxes", "base_boxes"
  add_foreign_key "public_stop_boxes", "base_boxes"
  add_foreign_key "turns", "dices"
  add_foreign_key "turns", "games"
  add_foreign_key "turns", "players"
end
