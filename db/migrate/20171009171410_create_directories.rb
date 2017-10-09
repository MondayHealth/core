class CreateDirectories < ActiveRecord::Migration[5.1]
  def change
    create_table :directories do |t|
      t.string :name, null: false
      t.string :short_name, null: false
      t.timestamps
    end
    add_index :directories, :name, unique: true
    add_index :directories, :short_name, unique: true
  end
end
