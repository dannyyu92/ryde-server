require "test_helper"

describe Trip do

  before do 
    DatabaseCleaner.start
    @trip = FactoryGirl.create(:trip)
  end

  after do
    DatabaseCleaner.clean
  end

  it "must not be a surge trip by default" do
    @trip.surge.must_equal false
  end

  it "must have a pickup date" do 
    trip = FactoryGirl.build(
      :trip, 
      pickup_date: nil
    )
    trip.wont_be :valid?
  end

  it "must have a fare" do 
    trip = FactoryGirl.build(
      :trip, 
      fare: nil
    )
    trip.wont_be :valid?
  end

  it "must have a non-negative fare" do 
    trip = FactoryGirl.build(
      :trip, 
      fare: -1.00
    )
    trip.wont_be :valid?
  end
  
  it "must have a car type" do 
    trip = FactoryGirl.build(
      :trip, 
      car: nil
    )
    trip.wont_be :valid?
  end
  
  it "must can only have a car type that's a valid car type" do 
    trip = FactoryGirl.build(
      :trip, 
      car: "flintstones_vehicle"
    )
    trip.wont_be :valid?
  end

  it "must have a city" do 
    trip = FactoryGirl.build(
      :trip, 
      city: nil
    )
    trip.wont_be :valid?
  end
  
  it "must have a payment method type" do 
    trip = FactoryGirl.build(
      :trip, 
      payment_method_type: nil, 
    )
    trip.wont_be :valid?
  end

  it "must have a valid payment method type" do 
    raise "implement me"
  end
  
  it "must have a driver" do 
    trip = FactoryGirl.build(
      :trip, 
      driver: nil
    )
    trip.wont_be :valid?
  end

  it "must have a delegate to its driver's name" do 
    trip = FactoryGirl.build(:trip)
    trip.driver_name.wont_be :blank?
  end

  it "must be able to order trips by descending pickup date" do 
    trip1 = FactoryGirl.build(:trip)
    trip2 = FactoryGirl.build(
      :trip, 
      pickup_date: 1.day.ago
    )
    trips = Trip.by_descending_pickup_date
    trip1.pickup_date.must_be :>=, trip2.pickup_date
  end

end
