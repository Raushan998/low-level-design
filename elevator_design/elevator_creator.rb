require_relative './elevator_car'
require_relative './elevator_controller'

class ElevatorCreator
  class << self
    def create_elevator
      (1..2).map do |i|
        elevator_car = ElevatorCar.new(i)
        ElevatorControllerList.new(elevator_car)
      end
    end
  end
end
