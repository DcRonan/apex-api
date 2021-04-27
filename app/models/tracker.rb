class Tracker < ApplicationRecord
  belongs_to :sport
  belongs_to :user

  validates :user, presence: true
  validates :sport, presence: true
end
