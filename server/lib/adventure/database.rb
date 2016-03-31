# This file is provided to help connect to postgres, in production, development
# and in test you should not need to change it.
require 'yaml'

if ENV["DATABASE_URL"]
  ActiveRecord::Base.establish_connection(ENV["DATABASE_URL"])
else
  db_config = YAML.load(File.read(File.join(Dir.pwd, 'server', 'db', 'database.yml')))
  ActiveRecord::Base.establish_connection(db_config[ENV['RACK_ENV']])
end
