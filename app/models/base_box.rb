class BaseBox < ApplicationRecord
  belongs_to :board
  has_many :piece_movements
  has_one :in_house_safe_box
  has_one :house_stop_box
  has_one :public_stop_box
  has_one :public_box
end

