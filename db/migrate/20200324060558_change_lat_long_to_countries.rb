class ChangeLatLongToCountries < ActiveRecord::Migration[5.2]
  def change
    rename_column :countries, :lat, :latitude
    rename_column :countries, :long, :longitude
  end
end
