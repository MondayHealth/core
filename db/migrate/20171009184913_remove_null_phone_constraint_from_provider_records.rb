class RemoveNullPhoneConstraintFromProviderRecords < ActiveRecord::Migration[5.1]
  def up
    change_column :provider_records, :phone, :string, null: true
  end

  def down
    change_column :provider_records, :phone, :string, null: false
  end
end
