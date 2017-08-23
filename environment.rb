raise "Missing DATABASE_URL environment variable" if ENV['DATABASE_URL'].empty?

require 'otr-activerecord'

OTR::ActiveRecord.configure_from_file! "config/database.yml"

Dir[File.join("lib", "**/*.rb")].each do |file_path|
  require_relative file_path
end