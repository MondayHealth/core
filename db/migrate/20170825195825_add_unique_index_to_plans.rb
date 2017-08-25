class AddUniqueIndexToPlans < ActiveRecord::Migration[5.1]
  def change
    add_index :plans, [:provider_id, :name], unique: true
  end
end
