require "rspec"
require_relative "spec_helper"

describe Wheel do
    before :all do
        @wheel = Wheel.new 26, 1.5;
    end

    it "implements the diameterizable interface" do
        expect(@wheel).to respond_to :diameter;
    end

    it "calculates the diameter" do
        wheel = Wheel.new 26, 1.5;
        expect(wheel.diameter).to be_within(0.01).of 29;
    end
end
