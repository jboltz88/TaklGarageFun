class AddUserReferenceToCars < ActiveRecord::Migration[5.0]
  def change
    add_reference :cars, :user, foreign_key: true, null: true
  end
end
