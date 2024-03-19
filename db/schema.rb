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

ActiveRecord::Schema[7.1].define(version: 2024_03_19_072748) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "base_boxes", force: :cascade do |t|
    t.integer "board_id"
    t.integer "position"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
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
    t.integer "board_id"
    t.date "dateplayed"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "house_stop_boxes", force: :cascade do |t|
    t.integer "basebox_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "houses", force: :cascade do |t|
    t.integer "board_id"
    t.integer "piece_id"
    t.string "color"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "in_house_safe_boxes", force: :cascade do |t|
    t.integer "basebox_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "piece_movements", force: :cascade do |t|
    t.integer "piece_id"
    t.integer "basebox_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pieces", force: :cascade do |t|
    t.integer "house_id"
    t.integer "position"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "playergames", force: :cascade do |t|
    t.integer "player_id"
    t.integer "game_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
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
    t.integer "basebox_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "public_stop_boxes", force: :cascade do |t|
    t.integer "basebox_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "turns", force: :cascade do |t|
    t.integer "player_id"
    t.integer "game_id"
    t.integer "dice_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "base_boxes", "boards", name: "fk_base_boxes_board_id"
  add_foreign_key "games", "boards", name: "fk_games_board_id"
  add_foreign_key "houses", "boards", name: "fk_houses_board_id"
  add_foreign_key "houses", "pieces", name: "fk_houses_piece_id"
  add_foreign_key "piece_movements", "base_boxes", column: "basebox_id", name: "fk_piece_movements_basebox_id"
  add_foreign_key "piece_movements", "pieces", name: "fk_piece_movements_piece_id"
  add_foreign_key "pieces", "houses", name: "fk_pieces_house_id"
  add_foreign_key "playergames", "games", name: "fk_player_games_game_id"
  add_foreign_key "playergames", "players", name: "fk_player_games_player_id"
  add_foreign_key "turns", "dices", name: "fk_turns_dice_id"
  add_foreign_key "turns", "games", name: "fk_turns_game_id"
  add_foreign_key "turns", "players", name: "fk_turns_player_id"
end
