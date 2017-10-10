class AddRecordLimitToDirectories < ActiveRecord::Migration[5.1]
  def change
    add_column :directories, :record_limit, :integer
  end
end
