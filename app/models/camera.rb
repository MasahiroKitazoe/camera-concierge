class Camera < ApplicationRecord
  has_many :cameras_ranks
  has_many :ranks, through: :cameras_ranks
  has_many :reviews
  belongs_to :makers, optional: true
  belongs_to :frames, optional: true
  belongs_to :finders, optional: true
  belongs_to :camera_types, optional: true


end
