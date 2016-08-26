class Photo < ApplicationRecord
  has_many :photo_tags
  has_many :tags, through: :photo_tags
  belongs_to :user
end
