class House < ApplicationRecord
    belongs_to :board
    has_many :pieces
    belongs_to :player, optional: true
end