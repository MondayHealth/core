class Provider < ActiveRecord::Base
  has_many :plans
  has_many :provider_records
end