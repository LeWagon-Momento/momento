class ChangeLatLongToPosts < ActiveRecord::Migration[5.2]
  def change
    rename_column :posts, :lat, :latitude
    rename_column :posts, :long, :longitude
  end
end
