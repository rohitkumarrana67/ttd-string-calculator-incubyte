class Calculator
  def self.add(numbers)
    # check for non string argument
    raise ArgumentError, 'Input must be a String' unless numbers.is_a?(String)

    # check for empty string argument
    return 0 if numbers.strip.empty?

    # determining delimiter
    delimiter = ","
    if numbers.start_with?("//")
      delimiter_line, numbers = numbers.split("\n", 2)
      delimiter = delimiter_line[2..-1]
    end

    # spliting on the basis of delimiter or \n
    nums_array = numbers.split(/#{Regexp.escape(delimiter)}|\n/)

    # converting numbers into integer
    nums_array = nums_array.map { |num| num.strip.to_i }

    # checking for negative numbers
    negatives = nums_array.select { |n| n < 0 }
    unless negatives.empty?
      raise "negative numbers not allowed #{negatives.join(',')}"
    end

    # returning sum of numbers
    nums_array.sum
  end
end
