require "test_helper"

describe ApplicationController do

  it "should accept a valid accept header and return a 200" do
    get "#{api_host_url}/ping", nil, {
      "HTTP_ACCEPT" => "application/com.ryde.main.v1", 
    }
    last_response.status.must_equal 200
  end

  it "should use default api if given an invalid accept header" do 
    get "#{api_host_url}/ping", nil, {
      "HTTP_ACCEPT" => "application/com.fake_ryde.v9001"
    } 
    last_response.status.must_equal 200
  end

end
