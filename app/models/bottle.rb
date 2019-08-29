class Bottle < ApplicationRecord
  has_many :comments
  has_many :users, through: :comments
  belongs_to :winery

  validates :vintage, length: { is: 4 }
  validates :price, numericality: { only_integer: true }


end
