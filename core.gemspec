Gem::Specification.new do |s|
  s.name        = 'core'
  s.version     = '0.0.1'
  s.date        = '2017-08-23'
  s.summary     = 'Shared repository for models and migrations.'
  s.authors     = ['Ben Jackson']

  s.files        = Dir["lib/**/*.rb"]
  s.require_path = 'lib'

  s.add_dependency 'pg', '0.21.0'
  s.add_dependency 'otr-activerecord', '1.2.4'
end