class ProviderRecord < ActiveRecord::Base
  belongs_to :payor
  belongs_to :directory
  belongs_to :provider

  validates_presence_of :payor, unless: ->(pr) { pr.directory.present? }
  validates_presence_of :accepted_plan_ids, unless: -> (pr) { pr.directory.present? }
  validates_presence_of :directory, unless: ->(pr) { pr.payor.present? }
  validates_presence_of :first_name
  validates_presence_of :last_name
  validates_presence_of :license
  validates_presence_of :address
end