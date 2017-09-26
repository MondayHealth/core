class ProviderRecord < ActiveRecord::Base
  belongs_to :payor
  belongs_to :doctor

  validates_presence_of :payor
  validates_presence_of :accepted_plan_ids
  validates_presence_of :first_name
  validates_presence_of :last_name
  validates_presence_of :license
  validates_presence_of :address
  validates_presence_of :phone
  validates_presence_of :specialties
end