class Kitchen < ApplicationRecord
  belongs_to :user
  # has_many :bookings

  validates :name, presence: true, uniqueness: true
  validates :location, presence: true, uniqueness: true
  validates :capacity, presence: true
end
