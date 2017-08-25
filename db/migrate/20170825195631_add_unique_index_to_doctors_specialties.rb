class AddUniqueIndexToDoctorsSpecialties < ActiveRecord::Migration[5.1]
  def change
    add_index :doctors_specialties, [:doctor_id, :specialty_id], unique: true
  end
end
