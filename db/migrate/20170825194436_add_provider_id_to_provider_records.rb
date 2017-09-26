class AddProviderIdToProviderRecords < ActiveRecord::Migration[5.1]
  def change
    add_column :provider_records, :provider_id, :integer
  end
end
