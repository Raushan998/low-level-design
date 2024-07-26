# frozen_string_literal: true
require_relative './location'
class Stores
  attr_accessor :store_id,
                :vehicle_inventory,
                :location,
                :reservation_list
  
  def initialize
    @store_id = rand(30393..30394)
    @reservation_list = []
  end

  def get_vehicles
    @vehicle_inventory.vehicle_list
  end

  def store_vehicle(_vehicles)
    @vehicle_inventory = VehicleInventoryManagement.new
    @vehicle_inventory.store_vehicles(_vehicles)
  end

  def create_reservation(vehicle, user)
    reservation = Reservation.new
    reservation.create_reservation(user, vehicle)
    @reservation_list << reservation
    reservation
  end

  def complete_reservation(reservation)
    reservation.complete
     puts "Reservations Status: #{reservation.reservation_status}"
  end
end
