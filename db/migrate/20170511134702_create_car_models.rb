class CreateCarModels < ActiveRecord::Migration[5.0]
  def change
    create_table :car_models do |t|
      t.references :manufacturer, foreign_key: true, null: false
      t.string :name, null: false

      t.timestamps
    end
  end
end
