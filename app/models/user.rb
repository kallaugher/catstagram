class User < ApplicationRecord
  has_many :photos
  has_secure_password
  validates :password, presence: :true
end
