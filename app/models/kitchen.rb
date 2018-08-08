class Kitchen < ApplicationRecord
  belongs_to :user
  # has_many :bookings

  validates :name, presence: true
  validates :location, presence: true
  validates :capacity, presence: true
end
