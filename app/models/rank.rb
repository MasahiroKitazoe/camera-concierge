class Rank < ApplicationRecord
  has_many :cameras_ranks
  has_many :cameras, through: :cameras_ranks
end
