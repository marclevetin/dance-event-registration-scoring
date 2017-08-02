require 'rails_helper'
require 'spec_helper'

RSpec.describe Person, type: :model do
  let(:person) { Person.new(first_name: "first", last_name: "last", wsdc_id: 1234) }

  describe "description" do
    it "person is valid with all required fields" do
      expect(expected thing).to eq(expected value)
    end

    it "person is not valid if first name is missing" do

    end

    it "person is not valid if last name is missing" do

    end

    it "WSDC ID must be a number" do

    end
  end
end
