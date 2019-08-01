class CreateAstronauts < ActiveRecord::Migration[5.0]
  def change
    create_table :astronauts do |t|
      t.string :name
      t.integer :age
      t.string :favorite_rocket
     end
  end
end