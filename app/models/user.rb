class User < ApplicationRecord
  has_secure_password

  has_many :trackers
  has_many :sports, through: :trackers

  validates :username, presence: true
  validates :password, presence: true, length: { minimum: 5 }
end
