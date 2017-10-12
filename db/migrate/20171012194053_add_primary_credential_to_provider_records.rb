class AddPrimaryCredentialToProviderRecords < ActiveRecord::Migration[5.1]
  def change
    add_column :provider_records, :primary_credential, :string
  end
end
