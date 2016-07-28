class Api::V1::ConfigsController < ApplicationController
  def ping
    return render_api(200, "configs/ping")
  end
end