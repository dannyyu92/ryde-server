class Api::V1::ConfigsController < ApplicationController
  def ping
    return render_api_fail(200, "configs/ping")
  end
end