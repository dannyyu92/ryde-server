class Api::V1::TripsController < ApplicationController

  def index
    return render_api(200, "trips/index")
  end
  
end