class Directory < ActiveRecord::Base
  has_many :provider_records
end