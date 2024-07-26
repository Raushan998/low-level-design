require_relative './products/car'
require_relative './products/bike'
require_relative './products/vehicle'
require_relative './products/status'
require_relative './products/vehicle_type'
require_relative './user'
require_relative './stores'
require_relative './vehicle_rental_system'
require_relative './location'
require_relative './bill'
require_relative './vehicle_inventory_management'
require_relative './payment'

def add_vehicles
    vehicle_1 = Car.new
    vehicle_1.set_vehicle_id(1)
    vehicle_1.set_vehicle_type(VehicleType::CAR)
    vehicle_2 = Car.new
    vehicle_2.set_vehicle_id(2)
    vehicle_2.set_vehicle_type(VehicleType::CAR)

    vehicles = []
    vehicles << vehicle_1
    vehicles << vehicle_2
    vehicles
end

def add_users
    users = []
    user_1 = User.new
    user_1.set_user_name("Panther404")
    user_1.set_user_id("293848")

    users << user_1
    users
end

def add_stores(vehicles)
    stores = []
    store_1 = Stores.new
    store_1.store_id = 1
    store_1.store_vehicle(vehicles)
    stores << store_1
    stores
end

users = add_users
vehicles = add_vehicles
stores = add_stores vehicles
rental_system = VehicleRentalSystem.new(stores, users)
location = Location.new(403012, "Bangalore", "Karnatka", "India")
store = rental_system.get_store(location)
reservation = store.create_reservation(store.get_vehicles[0], users[0])
bill = Bill.new(reservation)
payment = Payment.new
payment.pay_bill bill

store.complete_reservation(reservation)