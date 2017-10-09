class RemoveNullPhoneConstraintFromLocations < ActiveRecord::Migration[5.1]
  def up
    change_column :locations, :phone, :string, null: true
  end

  def down
    change_column :locations, :phone, :string, null: false
  end
end
