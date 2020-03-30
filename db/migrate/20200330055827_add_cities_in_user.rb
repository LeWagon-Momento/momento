class AddCitiesInUser < ActiveRecord::Migration[5.2]
  def change
    add_reference :users, :city, foreign_key: true
  end
end
