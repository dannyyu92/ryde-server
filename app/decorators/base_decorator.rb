class BaseDecorator < SimpleDelegator
  # Preserve the original obj class
  def class
    super
    __getobj__.class
  end

  # Allow for decorator to wrap
  # collections.
  private
  def self.wrap(collection)
    collection.map do |obj|
      new obj
    end
  end

end