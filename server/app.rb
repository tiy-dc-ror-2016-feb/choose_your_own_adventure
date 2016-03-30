require "rubygems"
require "bundler/setup"
require "sinatra"
require "json"

require_relative "lib/adventure"

set :static, true
set :public_folder, Proc.new { File.join(root, "..", "client") }

get "/backend" do
  "I am Groot!"
end

post "/backend/echo" do
  payload = JSON.parse(request.body.read)
  payload.to_json
end
