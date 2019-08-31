class User < ApplicationRecord
  has_secure_password

  has_many :bottle_prices
  has_many :bottles, through: :bottle_prices

  validates :name, length: { minimum: 2 }
  validates :email, uniqueness: true
  validates :password, length: { minimum: 6 }

  #route, custom controller and scope
  scope :highest_value, -> { joins(:bottle_prices).group('user_id').order('sum(price)DESC').limit(1)}

  def cellr_value
    bottles = BottlePrice.where(user_id: self.id)
    value = 0
    bottles.each do |c|
      value += c.price
    end
    return value
  end

  def vintage_average
    bottles = BottlePrice.where(user_id: self.id)
    value = 0
    bottles.each do |c|
      value += c.bottle.vintage
    end
    if bottles.empty?
      return 0
    else
    return value/bottles.count
  end
  end

  def total_wineries
    self.bottles.distinct.count('winery_id')
  end

  def self.create_with_omniauth(auth)
    where(uid: auth[:uid], provider:  auth[:provider]).first_or_initialize.tap do |user|
      user.email = auth[:info][:email]
      user.name = auth[:info][:name] unless user.name != nil
      user.password = SecureRandom.hex unless user.password != nil
      user.save!
    end
  end

end
