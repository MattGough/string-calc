require './lib/calculator'

describe Calculator do
  subject(:calculator) { described_class.new }

  describe '#int_add' do

    it 'should return 0 when passed an empty string' do
      expect(calculator.int_add("")).to eq(0)
    end

    it 'should return integer version of single input string' do
      random_number = rand(10)
      expect(calculator.int_add(random_number.to_s)).to eq(random_number)
    end

    it 'should return the sum of two number passed in a string' do
      expect(calculator.int_add("4,5")).to eq(9)
    end
  end
end
