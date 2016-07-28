json.id trip.id
json.pickup trip.decorated_pickup_date
json.driver trip.driver_name
json.surge trip.surge
json.fare trip.decorated_fare
json.car trip.car
json.city trip.city
json.payment_method_type trip.payment_method_type
json.cc_last_4 trip.cc_last_4 if trip.cc_last_4.present?