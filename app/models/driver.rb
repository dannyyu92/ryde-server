class Driver < ApplicationRecord

  # Validations
  validates :name, 
    presence: true, 
    length: { maximum: 30 }

end
