class Trip < ApplicationRecord

  # Associations
  belongs_to :driver

  # Callbacks
  before_validation :set_defaults, on: :create

  # Validations
  validates :pickup_date, 
    presence: true

  validates :fare, 
    presence: true, 
    numericality: { greater_than_or_equal_to: 0.00 }

  validates :car, 
    presence: true, 
    inclusion: { in: Car::ALL_TYPES }

  validates :city, 
    presence: true

  validates :payment_method_type, 
    presence: true

  validates :driver, 
    presence: true

  # Delegates
  delegate :name,
    to: :driver, 
    prefix: true

  # Scopes
  scope :by_descending_pickup_date, -> { order(pickup_date: :desc) }

  private
  def set_defaults
    self.surge ||= false
  end

end
