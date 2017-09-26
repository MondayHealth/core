class AddUniqueIndexToProvidersSpecialties < ActiveRecord::Migration[5.1]
  def change
    add_index :providers_specialties, [:provider_id, :specialty_id], unique: true
  end
end
