class AddTripRefToComments < ActiveRecord::Migration[5.2]
  def change
    add_reference :comments, :trip, foreign_key: true
  end
end
