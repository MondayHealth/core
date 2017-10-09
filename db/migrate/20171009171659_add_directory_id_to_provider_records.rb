class AddDirectoryIdToProviderRecords < ActiveRecord::Migration[5.1]
  def change
    add_column :provider_records, :directory_id, :integer
    remove_index :provider_records, name: "first_last_payor_id"
    add_index :provider_records, [:first_name, :last_name, :payor_id, :directory_id], name: "first_last_payor_id_directory_id", unique: true
  end
end
