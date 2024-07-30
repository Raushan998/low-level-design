require_relative './elevator_creator'
class ExternalButtonDispatcher
    attr_accessor :elevator_control_list

    def initialize
        @elevator_control_list = ElevatorCreator.create_elevator
    end

    def submit_request floor_id, direction
        @elevator_control_list.each do |elevator_controller|
            if elevator_controller.elevator_car.id%2 != 0 && floor_id %2 != 0
                elevator_car.submit_external_request(floor_id, direction)
            else elevator_controller.elevator_car % 2 == 0 && floor%2 == 0
                elevator_car.submit_external_request(floor_id, direction)
            end
        end
    end
end