class Experience < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_one_attached :photo
  validates :name, presence: true
  validates :address, presence: true
  validates :content, presence: true
  validates :price, presence: true
end
