class Api::V1::TripsController < ApplicationController

  def index
    trips = Trip.includes(:driver).by_descending_pickup_date
    @trips = TripDecorator.wrap(trips)
    return render_api(200, "trips/index")
  end

end