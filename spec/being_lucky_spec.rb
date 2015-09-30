RSpec.describe BeingLucky do
  subject { BeingLucky.new(dice) }
  let(:dice) { 5 }

  context "calculating scores between 0 - 1200" do
    100.times do
      it { expect(subject.score).to be_between(0, 1200) }
    end
  end
end
