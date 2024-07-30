class InternalButtonDispatcher
    attr_accessor :elevator_control_list

    def submit_request floor_id
        @elevator_control_list = ElevatorCreator.create_elevator
        
    end
end