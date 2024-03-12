class Player < ApplicationRecord
    has_many :turns
    has_many :player_games
    has_many :games, through: :player_games
end