class AddUniqueIndexToLocations < ActiveRecord::Migration[5.1]
  def change
    add_index :locations, [:provider_id, :address], unique: true
  end
end
