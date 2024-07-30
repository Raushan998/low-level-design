require_relative './external_button'
class Floor
    attr_accessor :floor_id,
                  :external_button
    
    def initialize floor_id
        @floor_id = floor_id
        @external_button = ExternalButton.new
    end

    def press_button direction
        @external_button.press_button(floor_id, direction)
    end
end