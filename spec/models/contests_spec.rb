require 'rails_helper'
require 'spec_helper'

RSpec.describe Contest, type: :model do
  let(:contest) { Contest.new(title: "title") }

  describe "contest model validations" do
    it "contest is valid with all required fields" do
      expect(contest.save).to eq(true)
    end

    it "contest is not valid if title is missing" do
      expect(contest.save).to eq(false)
    end

  end
end
