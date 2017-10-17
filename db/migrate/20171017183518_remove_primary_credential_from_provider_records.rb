class RemovePrimaryCredentialFromProviderRecords < ActiveRecord::Migration[5.1]
  def change
    remove_column :provider_records, :primary_credential, :string
  end
end
