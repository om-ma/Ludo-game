class PieceMovement < ApplicationRecord
  belongs_to :game
  belongs_to :piece
  belongs_to :base_box
end

