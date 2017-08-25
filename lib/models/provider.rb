class Provider < ActiveRecord::Base
  has_many :plans, dependent: :destroy
  has_many :provider_records, dependent: :destroy
end