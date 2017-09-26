class CreatePlans < ActiveRecord::Migration[5.1]
  def change
    create_table :plans do |t|
      t.integer :payor_id, null: false
      t.string :name, null: false
      t.text :url, null: false
      t.integer :record_limit, null: false
      t.timestamps
    end
  end
end
