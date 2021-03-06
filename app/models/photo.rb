class Photo < ApplicationRecord
  has_many :photo_tags
  has_many :tags, through: :photo_tags
  belongs_to :user

  has_attached_file :image, styles: { thumb: "400x400#", medium: "640x" }
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/

  accepts_nested_attributes_for :tags, reject_if: proc { |attributes| attributes['name'].blank? }

  def add_vote
    self.votes += 1
  end
  

 
end
