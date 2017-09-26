class CreateProviderRecords < ActiveRecord::Migration[5.1]
  def change
    create_table :provider_records do |t|
      t.integer :payor_id, null: false
      t.string :accepted_plan_ids, null: false
      t.string :first_name, null: false
      t.string :last_name, null: false
      t.string :license, null: false
      t.string :address, null: false
      t.string :phone, null: false
      t.text :specialties, null: false
      t.timestamps
    end

    add_index :provider_records, [:first_name, :last_name, :payor_id], name: 'first_last_payor_id', unique: true
  end
end
