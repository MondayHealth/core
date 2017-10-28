class AddNewModalitiesToProviderRecords < ActiveRecord::Migration[5.1]
  def change
    add_column :provider_records, :modalities, :text
  end
end
