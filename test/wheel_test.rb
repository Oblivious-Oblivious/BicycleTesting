require_relative "test_helper"

class WheelTest < Minitest::Test
    include DiameterizableInterfaceTest;

    def setup
        @wheel = @object = Wheel.new 26, 1.5;
    end

    def test_implements_the_diameterizable_interface
        assert_respond_to @wheel, :diameter;
    end

    def test_calculates_diameter
        wheel = Wheel.new 26, 1.5;
        assert_in_delta 29, wheel.diameter, 0.01;
    end
end
