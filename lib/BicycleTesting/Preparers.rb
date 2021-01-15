class Mechanic
    private def prepare_bike(bike)
        puts "prepping #{bike}";
    end

    def prepare_trip(trip)
        trip.bicycles.each do |bike|
            prepare_bike bike;
        end
    end
end

class TripCoordinator
    private def buy_food(customers)
        customers.each do |customer|
            puts "buying chips for #{customer}";
        end
    end

    def prepare_trip(trip)
        buy_food trip.customers;
    end
end

class Driver
    private def gas_up(vehicle)
        puts "filling up the gas tank of #{vehicle}";
    end

    private def fill_water_tank(vehicle)
        puts "filling up the water tank of #{vehicle}";
    end

    def prepare_trip(trip)
        gas_up trip.vehicle;
        fill_water_tank trip.vehicle;
    end
end

class Trip
    attr_reader :bicycles, :customers, :vehicle;

    def prepare(preparers)
        preparers.each do |pr|
            pr.prepare_trip(self);
        end
    end
end
