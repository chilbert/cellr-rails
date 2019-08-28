class BottlePrice < ApplicationRecord
  belongs_to :bottles
  belongs_to :users

end
