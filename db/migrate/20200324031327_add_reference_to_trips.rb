class AddReferenceToTrips < ActiveRecord::Migration[5.2]
  def change
    add_reference :trips, :users, foreign_key: true
  end
end
