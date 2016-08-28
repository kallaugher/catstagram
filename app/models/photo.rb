class Photo < ApplicationRecord
  has_many :photo_tags
  has_many :tags, through: :photo_tags
  belongs_to :user

  has_attached_file :image, styles: { medium: "640x", thumb: "400x400#" }
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/

	def add_vote
      self.votes += 1
    end


end
