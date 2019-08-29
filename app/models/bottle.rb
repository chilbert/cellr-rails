class Bottle < ApplicationRecord
  has_many :comments
  has_many :users, through: :comments
  belongs_to :winery

end
