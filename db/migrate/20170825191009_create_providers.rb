class CreateProviders < ActiveRecord::Migration[5.1]
  def change
    create_table :providers do |t|
      t.string :first_name, null: false
      t.string :last_name, null: false
      t.string :license, null: false
      t.timestamps
    end
  end
end
