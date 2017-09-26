class Provider < ActiveRecord::Base
  has_many :locations, dependent: :destroy
  has_many :provider_records, dependent: :destroy
  has_and_belongs_to_many :specialties
end