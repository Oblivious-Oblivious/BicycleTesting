# frozen_string_literal: true

require "minitest/autorun"
require "rspec"

require "BicycleTesting"

module PreparerInterfaceTest
    def test_implements_preparer_interface
        assert_respond_to @object, :prepare_trip;
    end
end

module DiameterizableInterfaceTest
    def test_implements_diameterizable_interface
        assert_respond_to @object, :diameter;
    end
end
