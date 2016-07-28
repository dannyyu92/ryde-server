class Trip < ApplicationRecord

  # Associations
  belongs_to :driver

  # Callbacks
  before_validation :set_defaults, on: :create

  private
  def set_defaults
    self.surge ||= false
  end

end
