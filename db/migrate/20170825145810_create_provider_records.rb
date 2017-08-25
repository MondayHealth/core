class CreateProviderRecords < ActiveRecord::Migration[5.1]
  def change
    create_table :provider_records do |t|
      t.integer :provider_id, null: false
      t.string :accepted_plan_ids, null: false
      t.string :first_name, null: false
      t.string :last_name, null: false
      t.string :license, null: false
      t.string :address, null: false
      t.string :phone, null: false
    end

    add_index :provider_records, [:first_name, :last_name, :provider_id], name: 'first_last_provider_id', unique: true
  end
end
