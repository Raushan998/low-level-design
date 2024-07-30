require_relative './external_button_dispatcher'
class ExternalButton
    attr_accessor :external_button_dispatcher

    def initialize
        @external_button_dispatcher = ExternalButtonDispatcher.new
    end

    def press_button floor, direction
        @external_button_dispatcher.submit_request(floor, direction)
    end
end