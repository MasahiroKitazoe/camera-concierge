class Camera < ApplicationRecord
  has_many :cameras_ranks
  has_many :ranks, through: :cameras_ranks
  has_many :reviews
  belongs_to :makers
  belongs_to :frames
  belongs_to :finders
  belongs_to :camera_types


  class << self
    def scrape_kakaku
    end
end
