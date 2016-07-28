class TripDecorator < BaseDecorator
  include ActionView::Helpers

  def decorated_pickup_date
    date = self.pickup_date
    date.strftime("%m/%d/%y")
  end

  def decorated_fare
    number_to_currency(self.fare)
  end

  def decorated_credit_card_number
    (self.cc_last_4)? "**** #{self.cc_last_4}" : nil
  end

end