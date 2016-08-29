class User < ApplicationRecord
  has_many :photos
  has_secure_password
  validates :password, presence: :true

  has_attached_file :image, styles: { medium: "640x", thumb: "200x200#" }
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/


end
