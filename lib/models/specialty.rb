class Specialty < ActiveRecord::Base
  has_and_belongs_to_many :providers
  belongs_to :alias, class_name: 'Specialty'
  has_many :aliases, foreign_key: 'alias_id', class_name: 'Specialty'
end