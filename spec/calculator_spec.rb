require './lib/calculator'

describe Calculator do
  subject(:calculator) { described_class.new}

  describe '#int_add' do
    it { is_expected.to respond_to(:int_add).with(1).argument }

    it 'should return 0 when passed an empty string' do
      expect(calculator.int_add("")).to eq(0)
    end

    it 'should return 2 when passed "2"' do
      expect(calculator.int_add("2")).to eq(2)
    end
  end
end
