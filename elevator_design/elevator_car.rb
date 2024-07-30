require_relative './direction'
require_relative './direction'

class ElevatorCar
    attr_accessor :display,
                  :current_floor,
                  :direction,
                  :status,
                  :internal_button,
                  :id
    
    def initialize id
        @id = id
    end

    def move direction, floor
        @direction = direction
        @floor = floor
    end

    def set_direction direction
        @direction = direction
    end
end