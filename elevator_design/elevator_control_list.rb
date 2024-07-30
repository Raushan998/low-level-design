require_relative './direction'
require_relative './status'
require_relative './elevator_car'
require 'rb_heap'

class ElevatorControlList
    attr_accessor :elevator_car
                  :lift_queue,
                  :upward_que,
                  :downward_que

    def initialize elevator_car
        @elevator_car = elevator_car
        @lift_queue = Queue.new
        @upward_queue = Heap.new(:<)
        @downward_queue = Heap.new(:>)
    end

    def submit_external_request(floor_id, direction)
        if direction == @elevator_car.direction && direction == Direction::UPWARD
            if @upward_que.peak < floor_id
                @upward_que.add(floor_id)
            else
                lift_queue.push(lift_id)
            end
        else
            if @upward_que.peak < floor_id
                @upward_que.add(floor_id)
            else
                lift_queue.push(lift_id)
            end
        end
    end
end