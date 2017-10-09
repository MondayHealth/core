class AddCertificateNumberAndCertifiedStatusToProviderRecords < ActiveRecord::Migration[5.1]
  def change
    add_column :provider_records, :certificate_number, :string
    add_column :provider_records, :certified, :boolean
  end
end
