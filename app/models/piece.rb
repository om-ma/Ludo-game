class Piece < ApplicationRecord
  belongs_to :house
  has_many :piece_movements
end

