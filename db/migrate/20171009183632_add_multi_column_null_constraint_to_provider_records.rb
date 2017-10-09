class AddMultiColumnNullConstraintToProviderRecords < ActiveRecord::Migration[5.1]
  def up
    change_column :provider_records, :payor_id, :integer, null: true
    change_column :provider_records, :accepted_plan_ids, :string, null: true

    execute "ALTER TABLE provider_records ADD CONSTRAINT payor_or_directory_not_null CHECK ((payor_id IS NULL or accepted_plan_ids IS NULL) != (directory_id IS NULL));"
  end

  def down
    execute "ALTER TABLE provider_records DROP CONSTRAINT payor_or_directory_not_null"

    change_column :provider_records, :payor_id, :integer, null: false
    change_column :provider_records, :accepted_plan_ids, :string, null: false
  end
end
