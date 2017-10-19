class AddAcceptingNewPatientsToProviderRecords < ActiveRecord::Migration[5.1]
  def change
    add_column :provider_records, :accepting_new_patients, :boolean
  end
end
