require 'game'

RSpec.describe Calculator do
  subject { Calculator.new(result) }
  let(:result) { Roll::Result.new(roll) }

  describe '#calc' do

    context 'three 2s and a 1' do
      let(:roll) { [1,2,2,2,4] }
      it { expect(subject.calc).to be(300) }
    end

    context 'five 1s' do
      let(:roll) { [1,1,1,1,1] }
      it { expect(subject.calc).to be(1200) }
    end

    context 'only triplets' do
      let(:roll) { [1,1,1,4,3] }
      it { expect(subject.calc).to be(1000) }
    end

    context 'only singles' do
      let(:roll) { [1,3,4,5,3] }
      it { expect(subject.calc).to be(150) }
    end

    context 'not scoring' do
      let(:roll) { [2,3,4,2,3] }
      it { expect(subject.calc).to be(0) }
    end
  end

end
