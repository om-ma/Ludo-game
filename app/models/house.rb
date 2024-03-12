class House < ApplicationRecord
    belongs_to :board
    has_many :pieces
end