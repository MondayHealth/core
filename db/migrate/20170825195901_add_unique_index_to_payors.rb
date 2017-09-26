class AddUniqueIndexToPayors < ActiveRecord::Migration[5.1]
  def change
    add_index :payors, :name, unique: true
  end
end
