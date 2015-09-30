RSpec.describe Roll do
  subject { Roll.new }

  it { expect(subject.result).to include(1..6) }
  it { expect(subject.result).to respond_to(:triplet) }
  it { expect(subject.result).to respond_to(:has_triplets?) }
  it { expect(subject.result).to respond_to(:remove_triplet!) }

  describe Roll::Result do
    subject { Roll::Result.new }

    context "matching a triplet in array" do
      before do
        3.times { subject << 1 }
        2.times { Die.roll }
      end
      it { expect(subject.triplet).to be(1) }
      it { expect(subject.has_triplets?).to be(true) }

      context "removing triplets" do
        before { subject.remove_triplet! }
        it { expect(subject).to_not include(1) }
      end
    end
  end

end
