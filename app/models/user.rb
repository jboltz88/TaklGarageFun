class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :cars

  def monthly_rent
    cars = User.find(id).cars
    sum = 0
    cars.each do |car|
      unless car.garage.blank?
        sum += car.garage.price
      end
    end
    sum
  end
end
