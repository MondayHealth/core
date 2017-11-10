class AddOriginalCodeToPlans < ActiveRecord::Migration[5.1]
  def change
    add_column :plans, :original_code, :string
  end
end
