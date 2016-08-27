class User < ApplicationRecord
  has_many :photos
  has_secure_password
end
