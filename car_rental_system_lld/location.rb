class Location
    attr_accessor :address,
                  :city,
                  :state,
                  :country,
                  :pin_code
    
    def initialize(pin_code, city, state, country)
        @pin_code = pin_code
        @city = city
        @state = state
        @country = country
    end
end