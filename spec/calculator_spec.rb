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
end
