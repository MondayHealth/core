class CreateProvidersSpecialties < ActiveRecord::Migration[5.1]
  def change
    create_table :providers_specialties do |t|
      t.integer :provider_id
      t.integer :specialty_id
    end
  end
end
