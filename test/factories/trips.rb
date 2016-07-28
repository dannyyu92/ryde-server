FactoryGirl.define do
  factory :trip do
    
    pickup_date { DateTime.current }
    fare { rand(0.00..9999.99) }
    car { Car::ALL_TYPES.sample }
    city "San Francisco"
    payment_method_type { PaymentMethod::ALL_TYPES.sample }
    cc_last_4 "1234"

    # Associations
    association :driver, factory: :driver

  end
end
