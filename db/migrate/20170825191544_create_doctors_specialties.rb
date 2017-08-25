class CreateDoctorsSpecialties < ActiveRecord::Migration[5.1]
  def change
    create_table :doctors_specialties do |t|
      t.integer :doctor_id
      t.integer :specialty_id
    end
  end
end
