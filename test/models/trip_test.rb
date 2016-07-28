require "test_helper"

describe Trip do

  before do 
    DatabaseCleaner.start
  end

  after do
    DatabaseCleaner.clean
  end

  it "must not be a surge trip by default" do
    raise "implement me"
  end

  it "must have a pickup date" do 
    raise "implement me"
  end

  it "must have a fare" do 
    raise "implement me"
  end

  it "must have a non-negative fare" do 
    raise "implement me"
  end
  
  it "must have a car type" do 
    raise "implement me"
  end
  
  it "must have a city" do 
    raise "implement me"
  end
  
  it "must have a payment method type" do 
    raise "implement me"
  end
  
  it "must have a driver" do 
    raise "implement me"
  end

end
