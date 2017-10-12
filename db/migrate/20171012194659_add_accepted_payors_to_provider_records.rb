class AddAcceptedPayorsToProviderRecords < ActiveRecord::Migration[5.1]
  def change
    add_column :provider_records, :accepted_payors, :text
  end
end
