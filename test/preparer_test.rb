require_relative "test_helper"

class MechanicTest < Minitest::Test
    include PreparerInterfaceTest;

    def setup
        @mechanic = @object = Mechanic.new;
    end

    # other tests which rely on @mechanic
end

class TripCoordinatorTest < Minitest::Test
    include PreparerInterfaceTest;

    def setup
        @trip_coordinator = @object = TripCoordinator.new;
    end
end

class DriverTest < Minitest::Test
    include PreparerInterfaceTest;

    def setup
        @driver = @object = Driver.new;
    end
end

class TripTest < Minitest::Test
    def test_requests_trip_preparation
        @preparer = Minitest::Mock.new;
        @trip     = Trip.new;
        @preparer.expect :prepare_trip, :nil, [@trip];

        @trip.prepare [@preparer];
        @preparer.verify;
    end
end
