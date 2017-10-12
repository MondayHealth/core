class AddProfessionsToProviderRecords < ActiveRecord::Migration[5.1]
  def change
    add_column :provider_records, :professions, :string
  end
end
