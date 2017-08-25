class CreateAddDoctorIdToProviderRecords < ActiveRecord::Migration[5.1]
  def change
    add_column :provider_records, :doctor_id, :integer
  end
end
