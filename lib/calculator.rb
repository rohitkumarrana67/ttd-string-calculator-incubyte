class Calculator
  def self.add(numbers)
    raise ArgumentError, 'Input must be a String' unless numbers.is_a?(String)
  end
end
