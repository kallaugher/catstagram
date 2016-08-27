class Photo < ApplicationRecord
  has_many :photo_tags
  has_many :tags, through: :photo_tags
  belongs_to :user

  has_attached_file :image
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
end
