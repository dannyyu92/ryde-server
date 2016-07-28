FactoryGirl.define do
  factory :trip do
    
    pickup_date { DateTime.current }
    fare { rand(0.00..9999.99) }
    
    
    # Associations
    association :driver, factory: :driver

  end
end
