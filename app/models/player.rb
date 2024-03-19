class Player < ApplicationRecord
  has_many :playergames
  has_many :games, through: :playergames
  has_many :turns
end

