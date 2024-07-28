require_relative '../expenses/expense'
require_relative '../expenses/expense_controller'
require_relative '../users/user'
class Group
    attr_accessor :group_id,
                  :group_name,
                  :user_list,
                  :expense_list,
                  :expense_controller
end