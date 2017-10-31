class RemoveNullConstraintFromRecordLimitInPlans < ActiveRecord::Migration[5.1]
  def up
    change_column :plans, :record_limit, :integer, null: true
  end

  def down
    change_column :plans, :record_limit, :integer, null: false
  end
end
