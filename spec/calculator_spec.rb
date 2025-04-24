require 'calculator'

RSpec.describe Calculator do
  context 'with invalid argument' do
    it 'should raise ArgumentError' do
      expect { Calculator.add(123) }.to raise_error(ArgumentError, 'Input must be a String')
    end
  end
end
