require_relative './expense'
require_relative './split_factory'
class ExpenseController
    def create_expense(expense_id,description, expense_amount, split_list, paid_by_user, split_type)
        split_type_obj = SplitFactory.create_split_type split_type
        split_type_obj.validate_request(expense_amount, split_list)
        Expense.new(
            expense_id, description,
            expense_amount, split_list,
            paid_by_user, split_type
        )
    end
end