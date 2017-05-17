class AddYearToCars < ActiveRecord::Migration[5.0]
  def change
    add_column :cars, :year, :integer
    change_column :cars, :year, :integer, null: false
  end
end
