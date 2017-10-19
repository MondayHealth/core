class RemoveNullConstraintFromSpecialtiesOnProviderRecords < ActiveRecord::Migration[5.1]
  def up
    change_column :provider_records, :specialties, :text, null: true
  end

  def down
    change_column :provider_records, :specialties, :text, null: false
  end
end
