# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts ">>> Creating drivers"

driver_manouchehr = Driver.find_or_create_by(
  name: "MANOUCHEHR"
)

driver_abdul = Driver.find_or_create_by(
  name: "Abdul"
)

driver_tuong = Driver.find_or_create_by(
  name: "Tuong"
)

puts ">>> Creating trips"

trip1 = Trip.find_or_create_by(
  pickup_date: DateTime.new(2016, 4, 2), 
  driver: driver_tuong, 
  surge: true, 
  fare: 92.71, 
  car: "uberX", 
  city: "New York City", 
  payment_method_type: "visa", 
  cc_last_4: "8699", 
)

trip2 = Trip.find_or_create_by(
  pickup_date: DateTime.new(2016, 4, 10), 
  driver: driver_abdul, 
  fare: 9.53, 
  car: "uberX", 
  city: "San Francisco", 
  payment_method_type: "visa", 
  cc_last_4: "8699", 
)

trip3 = Trip.find_or_create_by(
  pickup_date: DateTime.new(2016, 5, 13), 
  driver: driver_manouchehr, 
  fare: 7.00, 
  car: "uberPOOL", 
  city: "San Francisco", 
  payment_method_type: "visa", 
  cc_last_4: "8699", 
)