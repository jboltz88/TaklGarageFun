class AddGarageReferenceToCars < ActiveRecord::Migration[5.0]
  def change
    add_reference :cars, :garage, foreign_key: true, null: true
  end
end
