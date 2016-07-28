require "test_helper"

describe Api::V1::TripsController do

  before do 
    DatabaseCleaner.start
  end

  after do
    DatabaseCleaner.clean
  end

  it "should send a list of trips for '/trips'" do
    FactoryGirl.create_list(:trip, 3)

    get "#{api_host_url}/trips"

    # Check status code
    last_response.status.must_equal 200

    # Check response
    json = ActiveSupport::JSON.decode(last_response.body)
    json["data"]["trips"].length.must_equal 3
  end

  it "should have all necessary json keys for a trip in '/trips'" do
    trip = FactoryGirl.create(:trip)
    trip = TripDecorator.new(trip)

    get "#{api_host_url}/trips"

    # Check status code
    last_response.status.must_equal 200

    # Get response
    json = ActiveSupport::JSON.decode(last_response.body)
    json_trip = json["data"]["trips"].first

    # Check fields
    json_trip["id"].must_equal trip.id
    json_trip["pickup"].must_equal trip.decorated_pickup_date
    json_trip["driver"].must_equal trip.driver_name
    json_trip["surge"].must_equal trip.surge
    json_trip["fare"].must_equal trip.decorated_fare
    json_trip["car"].must_equal trip.car
    json_trip["city"].must_equal trip.city
    json_trip["payment_method_type"].must_equal trip.payment_method_type
    json_trip["cc_last_4"].must_equal trip.cc_last_4
    json_trip["created_at"].to_datetime.utc.to_s.must_equal trip.created_at.to_datetime.utc.to_s
  end

end
