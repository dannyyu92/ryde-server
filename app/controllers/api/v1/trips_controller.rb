class Api::V1::TripsController < ApplicationController

  def index
    @trips = Trip.includes(:driver)
    return render_api(200, "trips/index")
  end

end