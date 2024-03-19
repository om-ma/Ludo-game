class House < ApplicationRecord
  belongs_to :board
  belongs_to :piece
  has_many :pieces
end

