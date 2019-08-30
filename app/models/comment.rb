class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :bottle

  validates :title, presence: true
  # validates :description, presence: true



end
