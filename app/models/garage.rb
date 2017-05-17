class Garage < ApplicationRecord
  belongs_to :user
  has_many :cars

  validates :address, length: { minimum: 3 }, presence: true
  validates :spaces, presence: true
  validates :price, presence: true
end
