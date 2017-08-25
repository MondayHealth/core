class AddUniqueIndexToSpecialties < ActiveRecord::Migration[5.1]
  def change
    add_index :specialties, :name, unique: true
  end
end
