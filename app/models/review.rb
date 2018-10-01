class Review < ApplicationRecord
  has_many :camera_reviews
  has_many :cameras, through: :camera_reviews
end
