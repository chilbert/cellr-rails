class User < ApplicationRecord
  has_secure_password

  has_many :comments
  has_many :bottles, through: :comments

  validates :name, length: { minimum: 2 }
  validates :email, uniqueness: true
  validates :password, length: { in: 6..20 }



end
