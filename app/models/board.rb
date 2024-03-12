class Board < ApplicationRecord
    has_many :games
    has_many :houses
    has_many :base_boxes
end