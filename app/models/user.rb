class User < ApplicationRecord
  has_secure_password

  has_many :complaints
  has_many :comments
end
