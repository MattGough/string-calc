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

    it 'should handle three input numbers' do
      expect(calculator.int_add("1,6,7")).to eq(14)
    end

    it 'should handle 10 input numbers' do
      expect(calculator.int_add("1,2,3,4,5,6,7,8,9,10")).to eq(55)
    end

    it 'should accept and sum numbers on separate lines' do
      expect(calculator.int_add('1\n3\n3,3')).to eq(10)
    end

  end
end
