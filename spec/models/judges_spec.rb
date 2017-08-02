require 'rails_helper'
require 'spec_helper'

RSpec.describe Judge, type: :model do
  let(:judge) { Judge.new(first_name: "first", last_name: "last") }

  describe "judge model validations" do
    it "person is valid with all required fields" do
      expect(expected thing).to eq(expected value)
    end

    it "judge is not valid if first name is missing" do

    end

    it "judge is not valid if last name is missing" do

    end
  end
end
