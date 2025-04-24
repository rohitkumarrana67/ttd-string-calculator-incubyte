class Calculator
  def self.add(numbers)
    raise ArgumentError, 'Input must be a String' unless numbers.is_a?(String)

    0 if numbers.strip.empty?
  end
end
