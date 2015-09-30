RSpec.describe Die do
  subject { Die }

  describe ".roll" do
    context 'random' do
      it { expect(subject.roll).to be_between(1, 6) }
    end

    context 'fixed' do
      it { expect(subject.roll(5)).to eq(5) }
    end
  end

end
