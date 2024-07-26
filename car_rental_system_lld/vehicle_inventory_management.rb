require_relative './products/vehicle'
class VehicleInventoryManagement
    attr_accessor :vehicle_list


    def store_vehicles(vehicles)
        @vehicle_list = vehicles
    end
end
