require_relative './reservation'
class Bill
    attr_accessor :reservation,
                  :total_bill_amount,
                  :is_bill_paid

    def initialize reservation
        @reservation = reservation
        @total_bill_amount = compute_bill_amount
        @is_bill_paid = false
    end

    def compute_bill_amount
        100
    end
end