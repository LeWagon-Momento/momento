class AddCountriesToUsers < ActiveRecord::Migration[5.2]
  def change
    add_reference :users, :countries, foreign_key: true
  end
end
