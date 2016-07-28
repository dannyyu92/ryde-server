class TripDecorator < BaseDecorator
  include ActionView::Helpers

  def decorated_pickup_date
    date = self.pickup_date
    date.strftime("%m/%d/%y")
  end

  def decorated_fare
    number_to_currency(self.fare)
  end

end