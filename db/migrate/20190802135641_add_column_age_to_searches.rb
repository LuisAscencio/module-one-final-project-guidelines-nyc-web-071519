class AddColumnAgeToSearches < ActiveRecord::Migration[5.0]
  def change
    add_column :searches, :age, :integer
  end
end
