class AddUniqueIndexToLocations < ActiveRecord::Migration[5.1]
  def change
    add_index :locations, [:doctor_id, :address], unique: true
  end
end
