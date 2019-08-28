class Bottle < ApplicationRecord
  has_many :comments
  has_many :bottle_prices
  has_many :users, through: :comments
  belongs_to :wineries

end
