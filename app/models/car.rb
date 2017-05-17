class Car < ApplicationRecord
  belongs_to :car_model, required: true
  # didn't make user required for the case in which cars need
  # to be in the system, but aren't associated with any user
  belongs_to :user, required: false
  has_one :manufacturer, through: :car_model

  validates :vin, presence: true
  validates :year, length: { is: 4 }, presence: true
end
