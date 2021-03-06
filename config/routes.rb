Rails.application.routes.draw do

  # API
  constraints subdomain: (/(dev){0,1}api/) do
    namespace :api, path: "/", defaults: { format: "json" } do
      scope module: :v1, constraints: ApiConstraints.new(version: 1, default: true) do

        # Configurations
        get "ping" => "configs#ping"

        # Trips
        get "trips" => "trips#index"

      end
    end
  end

end
