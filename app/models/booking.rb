class Booking < ApplicationRecord
  belongs_to :kitchen
  belongs_to :user
  validates :date, presence: true
end
