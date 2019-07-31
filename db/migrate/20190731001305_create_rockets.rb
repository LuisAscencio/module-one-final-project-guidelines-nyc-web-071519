
class CreateRockets < ActiveRecord::Migration[5.0]
  def change
    create_table :rockets do |t|
      t.string :rocket_name
      t.integer :cost
      t.string :first_flight
      t.string :country
      t.integer :height
      t.integer :diameter
      t.integer :mass
      t.string :description
     end
  end
end