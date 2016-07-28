require "test_helper"

describe Driver do

  before do 
    DatabaseCleaner.start
  end

  after do
    DatabaseCleaner.clean
  end

  it "must have a non-nil name" do
    driver = FactoryGirl.build(
      :driver, 
      name: nil
    )
    driver.save
    driver.wont_be :valid?
  end

  it "must have a non-blank name" do 
    driver = FactoryGirl.build(
      :driver, 
      name: ""
    )
    driver.save
    driver.wont_be :valid?
  end

  it "must have a name less than 30 chars" do 
    driver = FactoryGirl.build(
      :driver, 
      name: "1234567890"\
      "1234567890"\
      "1234567890"\
      "1"
    )
    driver.save
    driver.wont_be :valid?
  end

end
