ENV["RACK_ENV"] = "test"

require "rubygems"
require "bundler/setup"

begin
  require "pry"
rescue LoadError
end

require "minitest/autorun"
require "rack/test"

require_relative "../app"

# Overwrite the development database connection with a test connection.
ActiveRecord::Base.establish_connection(
  adapter:  'sqlite3',
  database: 'test.sqlite3'
)

# Gotta run migrations before we can run tests.  Down will fail the first time,
# so we wrap it in a begin/rescue.
# begin ApplicationMigration.migrate(:down); rescue; end
# ApplicationMigration.migrate(:up)
