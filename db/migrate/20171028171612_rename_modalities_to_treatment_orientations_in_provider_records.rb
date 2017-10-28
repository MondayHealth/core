class RenameModalitiesToTreatmentOrientationsInProviderRecords < ActiveRecord::Migration[5.1]
  def change
    rename_column :provider_records, :modalities, :treatment_orientations
  end
end
