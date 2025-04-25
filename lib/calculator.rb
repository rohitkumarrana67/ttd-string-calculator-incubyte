class Calculator
  def self.add(numbers)
    raise ArgumentError, 'Input must be a String' unless numbers.is_a?(String)

    return 0 if numbers.strip.empty?

    delimiter = ","
    if numbers.start_with?("//")
      delimiter_line, numbers = numbers.split("\n", 2)
      delimiter = delimiter_line[2..-1]
    end

    nums_array = numbers.split(/#{Regexp.escape(delimiter)}|\n/)

    nums_array = nums_array.map { |num| num.strip.to_i }
    nums_array.sum

  end
end
