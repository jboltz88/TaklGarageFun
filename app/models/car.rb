class Car < ApplicationRecord
  belongs_to :car_model, required: true

  validates :vin, presence: true
end
