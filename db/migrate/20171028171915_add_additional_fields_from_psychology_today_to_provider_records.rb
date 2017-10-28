class AddAdditionalFieldsFromPsychologyTodayToProviderRecords < ActiveRecord::Migration[5.1]
  def change
    add_column :provider_records, :years_in_practice, :integer
    add_column :provider_records, :school, :string
    add_column :provider_records, :year_graduated, :integer
    add_column :provider_records, :license_state, :string
    add_column :provider_records, :accepted_payment_methods, :string
    add_column :provider_records, :source_updated_at, :datetime    
  end
end
