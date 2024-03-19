class Game < ApplicationRecord
  belongs_to :board
  has_many :playergames
  has_many :players, through: :playergames
  has_many :piece_movements
  has_many :turns
end

