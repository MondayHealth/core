require 'json'
require_relative '../environment'

Dir[File.join("db/seed/payors", "*.json")].each do |file_path|
  data = JSON.parse(open(file_path).read)
  payor = Payor.where(name: data["name"]).first_or_create!
  data["plans"].each do |plan_data|
    plan = payor.plans.where(name: plan_data["name"]).first_or_initialize
    plan.url = plan_data["url"]
    plan.record_limit = plan_data["record_limit"] || 1000
    plan.save!
  end
end

Dir[File.join("db/seed/directories", "*.json")].each do |file_path|
  data = JSON.parse(open(file_path).read)
  data["directories"].each do |directory_data|
    directory = Directory.where(short_name: directory_data["short_name"]).first_or_initialize
    directory.name = directory_data["name"]
    directory.save!
  end
end
