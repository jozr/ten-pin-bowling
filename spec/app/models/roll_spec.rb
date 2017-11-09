require "rails_helper"

describe Roll, type: :model do
  let(:game) { create(:game) }
  let(:frame) { create(:frame, game: game) }
  let(:roll) { create(:roll, frame: frame) }

  context "associations" do
    it { should belong_to(:frame) }
  end

  context "defaults" do
  end
end
