class ChangeCityLatLong < ActiveRecord::Migration[5.2]
  def change
    rename_column :cities, :lat, :latitude
    rename_column :cities, :long, :longitude
  end
end
