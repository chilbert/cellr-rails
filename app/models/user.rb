class User < ApplicationRecord
  has_secure_password

  has_many :comments
  has_many :bottles, through: :comments

  validates :name, length: { minimum: 2 }
  validates :email, uniqueness: true
  validates :password, length: { in: 6..20 }


  def self.create_with_omniauth(auth)
    user = find_or_create_by(uid: auth[:uid], provider:  auth[:provider])
    user.email = auth[:info][:email]
    user.password = auth[:uid]
    user.name = auth[:info][:name]
    if User.exists?(user.id)
      user
    else
      user.save!
      user
    end
  end


  

  def total_bottle_count
    self.bottles.count
  end

  def total_wineries
    self.bottles.distinct.count('winery_id')
  end

end
