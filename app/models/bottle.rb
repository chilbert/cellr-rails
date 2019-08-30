class Bottle < ApplicationRecord
  has_many :bottle_prices
  has_many :users, through: :bottle_prices
  belongs_to :winery

  accepts_nested_attributes_for :bottle_prices

  validates :vintage, length: { is: 4 }


end
