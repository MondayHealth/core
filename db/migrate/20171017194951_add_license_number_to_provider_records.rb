class AddLicenseNumberToProviderRecords < ActiveRecord::Migration[5.1]
  def change
    add_column :provider_records, :license_number, :string
  end
end
