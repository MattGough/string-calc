require './lib/calculator'

describe Calculator do
  subject(:calculator) { described_class.new}

  describe '#int_add' do
    it { is_expected.to respond_to(:int_add).with(1).argument }
  end
end
