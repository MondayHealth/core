class AddIsCanonicalFlagToSpecialties < ActiveRecord::Migration[5.1]
  def change
    add_column :specialties, :is_canonical, :boolean, null: false, default: false
  end
end
