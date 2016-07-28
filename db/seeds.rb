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