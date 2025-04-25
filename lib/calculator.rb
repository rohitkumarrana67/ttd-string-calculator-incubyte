class Calculator
  def self.add(numbers)
    raise ArgumentError, 'Input must be a String' unless numbers.is_a?(String)

    return 0 if numbers.strip.empty?

    nums_array = numbers.split(',')
    return nums_array[0].to_i if nums_array.size == 1

    nums_array[0].to_i + nums_array[1].to_i if nums_array.size == 2

  end
end
