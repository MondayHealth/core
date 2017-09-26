class AddUniqueIndexToProviders < ActiveRecord::Migration[5.1]
  def change
    add_index :providers, [:first_name, :last_name, :license], unique: true
  end
end
