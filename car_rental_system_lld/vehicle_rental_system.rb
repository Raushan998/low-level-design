require_relative './stores'
class VehicleRentalSystem
    attr_accessor :store_list,
                  :user_list
    
    def initialize store_list, user_list
        @store_list = store_list
        @user_list  = user_list
    end

    def get_store(location)
        store_list[0]
    end
end