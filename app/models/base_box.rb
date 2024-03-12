class BaseBox < ApplicationRecord
    belongs_to :board
    has_many :piece_movements
end
  