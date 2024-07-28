class Expense
    attr_accessor :expense_id,
                  :description,
                  :expense_amount,
                  :paid_by_user,
                  :split_type,
                  :split_list
    
    def initialize(expense_id, description, expense_amount, paid_by_user, split_type, split_list)
        @expense_id = expense_id
        @description = description
        @expense_amount = expense_amount
        @paid_by_user = paid_by_user
        @split_type = split_type
        @split_list = split_list
    end
end