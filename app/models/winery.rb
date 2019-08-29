class Winery < ApplicationRecord
  validates :name, presence: true
  has_many :bottles

end
