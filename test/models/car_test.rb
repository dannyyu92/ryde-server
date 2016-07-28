require "test_helper"

describe Car do
  let(:car) { Car.new }

  it "must be valid" do
    value(car).must_be :valid?
  end
end
