require "rails_helper"

describe Frame, type: :model do
  let(:game) { create(:game) }
  let(:frame) { create(:frame, game: game) }

  context "associations" do
    it { should belong_to(:game) }
    it { should have_many(:rolls) }
  end

  context "defaults" do
    it { expect(frame.last).to eq(false) }
  end
end
