class PieceMovement < ApplicationRecord
    belongs_to :piece
    belongs_to :game
    belongs_to :base_boxe
end 