class RemoveLicenseStatusFromProviderRecords < ActiveRecord::Migration[5.1]
  def change
    remove_column :provider_records, :license_status, :string
  end
end
