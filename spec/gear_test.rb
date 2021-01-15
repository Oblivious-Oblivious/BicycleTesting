require "minitest/autorun"
require_relative "spec_helper"

class DiameterDouble
    def diameter
        10;
    end
end

class GearTest < Minitest::Unit::TestCase
    def setup
        @observer = MiniTest::Mock.new;
        @gear = Gear.new({
            chainring: 52,
            cog:       11,
            observer:  @observer
        });
    end

    def test_notifies_observers_when_cogs_change
        @observer.expect :changed, true, [52, 27];
        @gear.set_cog 27;
        @observer.verify;
    end

    def test_notifies_observers_when_chainrings_change
        @observer.expect :changed, true, [42, 11];
        @gear.set_chainring 42;
        @observer.verify;
    end

    def test_calculates_gear_inches
        gear = Gear.new({
            chainring: 52,
            cog:       11,
            wheel:     Wheel.new(26, 1.5)
        });

        self.assert_in_delta 137.1, gear.gear_inches, 0.01;
    end

    def test_gear_inches_double
        gear = Gear.new({
            chainring: 52,
            cog:       11,
            wheel:     DiameterDouble.new
        });

        self.assert_in_delta 47.27, gear.gear_inches, 0.01;
    end
end
