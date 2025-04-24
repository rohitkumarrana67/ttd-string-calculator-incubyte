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
end
