require "test_helper"

describe PaymentMethod do
  let(:payment_method) { PaymentMethod.new }

  it "must be valid" do
    value(payment_method).must_be :valid?
  end
end
