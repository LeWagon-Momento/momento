class CreateCountries < ActiveRecord::Migration[5.2]
  def change
    create_table :countries do |t|
      t.string :name
      t.float :lat
      t.float :long

      t.timestamps
    end
  end
end
