class Camera < ApplicationRecord
  has_many :cameras_ranks
  has_many :ranks, through: :camera_ranks
  has_many :camera_reviews
  has_many :reviews, through: :camera_reviews
  belongs_to :makers, optional: true
  belongs_to :frames, optional: true
  belongs_to :finders, optional: true
  belongs_to :camera_types, optional: true


end
