require 'rails_helper'

require "spec_helper"

RSpec.describe Event, type: :model do
  describe "basic event modeling" do
    let(:event) {Event.new(event_name: "test event")}
    let(:event_without_required_fields) {Event.new(event_name: nil)}

    it "is valid with valid attributes" do
      expect(event.event_name).to eq("test event")
    end

    it "is not valid without an event name" do
      expect(event_without_required_fields.save).to eq(false)
    end
  end
end
