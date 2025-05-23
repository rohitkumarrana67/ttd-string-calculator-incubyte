require 'calculator'

RSpec.describe Calculator do
  context 'with invalid argument' do
    it 'should raise ArgumentError' do
      expect { Calculator.add(123) }.to raise_error(ArgumentError, 'Input must be a String')
    end
  end

  context 'with empty string' do
    it 'expect O' do
      expect(Calculator.add('')).to eq(0)
    end
  end

  context 'with one number' do
    it 'expect the same number' do
      expect(Calculator.add('1')).to eq(1)
    end
  end

  context 'with two numbers' do
    it 'expect the correct sum of two numbers' do
      expect(Calculator.add('1,2')).to eq(3)
    end
  end

  context 'with multiple numbers' do
    it 'expect the correct sum of multiple numbers' do
      expect(Calculator.add('1,2,3')).to eq(6)
    end
  end

  context 'with new lines between the numbers' do
    it 'expect the correct sum of numbers' do
      expect(Calculator.add("1\n2,3")).to eq(6)
    end
  end

  context 'with different delimiters' do
    it 'expect the correct sum of numbers with delimiter is ;' do
      expect(Calculator.add("//;\n1;2")).to eq(3)
    end
    it 'expect the correct sum of numbers with delimiter is &' do
      expect(Calculator.add("//&\n1&2&3")).to eq(6)
    end
  end

  context 'with negative numbers' do
    it 'raises an exception with one negative number' do
      expect { Calculator.add("1,-2") }.to raise_error("negative numbers not allowed -2")
    end

    it 'raises an exception with multiple negative numbers' do
      expect { Calculator.add("1,-2,3,-4") }.to raise_error("negative numbers not allowed -2,-4")
    end
  end

end
