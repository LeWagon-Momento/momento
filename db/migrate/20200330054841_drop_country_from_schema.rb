class DropCountryFromSchema < ActiveRecord::Migration[5.2]
  def change
    remove_foreign_key :users, :countries
    drop_table :countries
  end
end
