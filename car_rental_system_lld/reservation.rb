require_relative './user'
require_relative './products/vehicle'
require_relative './reservation_status'
class Reservation
    attr_accessor :reservation_id,
                  :user,
                  :vehicle,
                  :booking_date,
                  :booked_from,
                  :booked_till,
                  :pickup_location,
                  :drop_location,
                  :reservation_status
    
    def create_reservation(user, vehicle)
        unless user.is_a? User
            raise "#{user} is not User type."
        end

        unless vehicle.is_a? Vehicle
            raise "#{vehicle} is not Vehicle type"
        end

        @user = user
        @reservation_id = rand(13030..38383)
        @vehicle = vehicle
        @booking_date = Time.now.to_s
        @reservation_status = ReservationStatus::SCHEDULED
        @reservation
    end

    def complete
        @reservation_status = ReservationStatus::COMPLETED
    end
end