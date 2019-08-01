class CreateLaunches < ActiveRecord::Migration[5.0]
  def change
    create_table :launches do |t|
      t.integer :user_id
      t.integer :rocket_id
      t.string :mission_name
      t.boolean :upcoming
      t.string :launch_date
      t.string :rocket_name
      t.string :payload
      t.string :launch_site
      t.string :launch_state
      t.boolean :launch_success
     end

  end
end
