class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.string :name
      t.text :description
      t.string :address
      t.float :lat
      t.float :long
      t.date :date
      t.references :trips, foreign_key: true

      t.timestamps
    end
  end
end
