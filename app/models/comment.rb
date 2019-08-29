class Comment < ApplicationRecord
  belongs_to :users
  belongs_to :bottles

  validates :name, presence: true
  validates :description, presence: true



end
