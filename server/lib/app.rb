# This is used to select which database to use.
ENV["RACK_ENV"] ||= 'development'

require "bundler/setup"
require "sinatra"
require "json"

require_relative 'database'

class App < Sinatra::Base
  # Serve any HTML/CSS/JS from the client folder
  set :static, true
  set :public_folder, Proc.new { File.join(root, "..", "client", "public") }

  # Enable the session store
  enable :sessions

  # This ensures that we always return the content-type application/json
  before do
    content_type "application/json"
  end

  # You can delete this route
  get "/api" do
    {msg: 'The server is running'}.to_json
  end

  # If this file is run directly boot the webserver
  run! if app_file == $PROGRAM_NAME
end
