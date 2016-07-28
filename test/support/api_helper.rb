# For HTTP Requests
require "rack/test"

module ApiHelper
  include Rack::Test::Methods

  def app
    Rails.application
  end

  def api_host_url(ssl=false)
    if ssl
      "https://api.example.com"
    else
      "http://api.example.com"
    end
  end
end