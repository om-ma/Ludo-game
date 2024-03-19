class Board < ApplicationRecord
  has_many :games
  has_many :base_boxes
end

