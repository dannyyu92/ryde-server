class Driver < ApplicationRecord

  # Associations
  has_many :trips

  # Validations
  validates :name, 
    presence: true, 
    length: { maximum: 30 }

end
