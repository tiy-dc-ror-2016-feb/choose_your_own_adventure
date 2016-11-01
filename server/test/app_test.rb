require_relative "test_helper"

class AppTest < Minitest::Test
  include Rack::Test::Methods

  def app
    App
  end
end
