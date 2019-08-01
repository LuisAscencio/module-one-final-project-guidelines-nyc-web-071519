class CreateSearches < ActiveRecord::Migration[5.0]
  def change
    create_table :searches do |t|
      t.integer :astronaut_id
      t.string :future_launch_date # future flight
      t.string :future_launch_site
      t.string :favorite_rocket
     end
  end
end