class CreateGarages < ActiveRecord::Migration[5.0]
  def change
    create_table :garages do |t|
      t.string :address, null: false
      t.references :user, foreign_key: true, null: false
      t.integer :spaces, null: false, default: 1
      t.integer :price, null: false, default: 0

      t.timestamps
    end
  end
end
