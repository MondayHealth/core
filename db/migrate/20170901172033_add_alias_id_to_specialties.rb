class AddAliasIdToSpecialties < ActiveRecord::Migration[5.1]
  def change
    add_column :specialties, :alias_id, :integer
  end
end
