require_relative './internal_button_dispatcher'
class InternalButton
    attr_accessor :internal_button_dispatcher

    def initialize @building
        @internal_button_dispatcher = InternalButtonDispatcher.new
        @button = ['1', '2', '3', '4', '5', '6', '7', '8']
    end

    def press_button floor_id
        # check whether the floor exist in the builing or not
        @internal_button_dispatcher.submit_internal_request(floor)
    end

    def show_button
        @button.each do |button|
            print "#{button}   "
        end
        print "/n"
    end
end