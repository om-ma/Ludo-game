class Game < ApplicationRecord
    belongs_to :board
    has_many :player_games
    has_many :players, through: :player_games
    has_many :turns
    has_many :piece_movements
end