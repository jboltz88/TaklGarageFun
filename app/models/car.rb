class Car < ApplicationRecord
  belongs_to :car_model, required: true

  validates :vin, presence: true
  validates :year, length: { is: 4 }, presence: true
end
