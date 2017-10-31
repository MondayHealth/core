class SplitUniqueConstraintsOnProviderRecordsToFixDuplicateRows < ActiveRecord::Migration[5.1]
  def up
    remove_index :provider_records, [:first_name, :last_name, :payor_id, :directory_id]
    add_unique_payor_id_constraint =<<EOD
    DELETE FROM provider_records
    WHERE id IN (SELECT id
                  FROM (SELECT id,
                                 ROW_NUMBER() OVER (partition BY first_name, last_name, payor_id ORDER BY id) AS rnum
                         FROM provider_records) t
                  WHERE t.rnum > 1);
EOD

    add_unique_directory_id_constraint =<<EOD
    DELETE FROM provider_records
    WHERE id IN (SELECT id
                  FROM (SELECT id,
                                 ROW_NUMBER() OVER (partition BY first_name, last_name, directory_id ORDER BY id) AS rnum
                         FROM provider_records) t
                  WHERE t.rnum > 1);
EOD

    execute add_unique_directory_id_constraint
    execute add_unique_payor_id_constraint

    add_index :provider_records, [:first_name, :last_name, :payor_id], name: "first_last_payor_id", unique: true
    add_index :provider_records, [:first_name, :last_name, :directory_id], name: "first_last_directory_id", unique: true

  end

  def down
    add_index :provider_records, [:first_name, :last_name, :payor_id, :directory_id], name: 'first_last_payor_id_directory_id', unique: true
  end
end
