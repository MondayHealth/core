class Specialty < ActiveRecord::Base
  has_and_belongs_to_many :doctors
  belongs_to :alias
  has_many :aliases, foreign_key: 'alias_id', class_name: 'Specialty'
end