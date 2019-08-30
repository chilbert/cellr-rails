class BottlePrice < ApplicationRecord
  belongs_to :user
  belongs_to :bottle

  validates :price, presence: true



end
