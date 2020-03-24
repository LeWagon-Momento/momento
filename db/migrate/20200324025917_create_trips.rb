class CreateTrips < ActiveRecord::Migration[5.2]
  def change
    create_table :trips do |t|
      t.string :name
      t.text :description
      t.date :start_date
      t.date :end_date
      t.string :vanity_url

      t.timestamps
    end
  end
end
