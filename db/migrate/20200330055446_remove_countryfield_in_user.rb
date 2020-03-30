class RemoveCountryfieldInUser < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :country_id
  end
end
