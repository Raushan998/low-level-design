class User
    attr_accessor :user_id,
                  :driving_license
                  :user_name
    
    def set_user_name user_name
        @user_name = user_name
    end

    def set_driving_license driving_license
        @driving_license = driving_license
    end

    def set_user_id user_id
        @user_id = user_id
    end
end