class CreateLocations < ActiveRecord::Migration[5.1]
  def change
    create_table :locations do |t|
      t.integer :provider_id, null: false
      t.string :address, null: false
      t.string :phone, null: false
      t.timestamps
    end
  end
end
