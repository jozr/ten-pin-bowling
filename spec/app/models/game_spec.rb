require "rails_helper"

describe Game, type: :model do
  let(:game) { create(:game) }

  context "associations" do
    it { should have_many(:frames) }
  end

  context "defaults" do
    it { expect(game.score).to eq(0) }
  end
end
