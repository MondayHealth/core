require 'otr-activerecord'
require 'pg'

Dir[File.join(File.dirname(__FILE__), "models", "**/*.rb")].each do |file_path|
  require_relative file_path
end