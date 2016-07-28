json.id trip.id
json.pickup trip.decorated_pickup_date
json.driver trip.driver_name
json.surge trip.surge
json.fare trip.decorated_fare
json.car trip.car
json.city trip.city

json.payment_method do 
  json.payment_method_type trip.payment_method_type

  if trip.decorated_credit_card_number.present?
    json.credit_card_number trip.decorated_credit_card_number
  end
end

json.created_at trip.created_at