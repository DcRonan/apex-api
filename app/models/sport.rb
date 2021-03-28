class Sport < ApplicationRecord
  has_one :tracker
  has_one :user

  validates :name, presence: true, length: { minimum: 3 }
  validates :minutes, presence: true
  validates :seconds, presence: true
  validates :hours, presence: true
  validates :distance, presence: true
  validates :notes, presence: true
end
