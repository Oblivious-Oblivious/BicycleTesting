require "rspec"
require_relative "spec_helper"

class DiameterDouble
    def diameter
        10;
    end
end

describe Gear do
    it "calculates the gear inches" do
        gear = Gear.new({
            chainring: 52,
            cog:       11,
            wheel:     Wheel.new(26, 1.5)
        });

        expect(gear.gear_inches).to be_within(0.01).of 137.1;
    end

    it "calculates gear inches using a double" do
        gear = Gear.new({
            chainring: 52,
            cog:       11,
            wheel:     DiameterDouble.new
        });

        expect(gear.gear_inches).to be_within(0.01).of 47.27;
    end
end
