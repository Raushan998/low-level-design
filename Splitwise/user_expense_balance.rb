class UserExpenseBalance
    attr_accessor :user_vs_balance,
                  :total_expense,
                  :total_payment,
                  :total_owe
                  :total_get_back
    
    def initialize
        user_vs_balance = Hash.new
        total_expense = 0.0
        total_payment = 0.0
        total_owe = 0.0
        total_get_back = 0.0
    end
end