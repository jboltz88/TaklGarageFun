class CarModel < ApplicationRecord
  belongs_to :manufacturer, required: true
  has_many :cars
end
