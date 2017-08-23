class CreatePlans < ActiveRecord::Migration[5.0]
  def change
    create_table :plans do |t|
      t.integer :provider_id, null: false
      t.string :name, null: false
      t.text :url, null: false
      t.integer :record_limit, null: false
      t.timestamps
    end
  end
end
