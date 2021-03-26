class Tracker < ApplicationRecord
  belongs_to :sport

  validates :sport, presence: true
end
