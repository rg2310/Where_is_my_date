class Experience < ApplicationRecord
  belongs_to :user
  has_many :bookings
  validates :name, presence: true
  validates :address, presence: true
  validates :content, presence: true
  validates :price, presence: true
  validates :number_of_participants, presence: true
end
