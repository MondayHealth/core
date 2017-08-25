class CreateAddUniqueIndexToDoctors < ActiveRecord::Migration[5.1]
  def change
    add_index :doctors, [:first_name, :last_name, :license], unique: true
  end
end
