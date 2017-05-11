class CreateCars < ActiveRecord::Migration[5.0]
  def change
    create_table :cars do |t|
      t.references :car_model, foreign_key: true, null: false
      t.string :vin, null: false
      t.integer :mileage, null: false, default: 0
      t.string :color

      t.timestamps
    end
  end
end
