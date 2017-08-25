class Doctor < ActiveRecord::Base
  has_many :locations
  has_and_belongs_to_many :specialties
end