require_relative './bill'
class Payment
    def pay_bill bill
        puts "Triggering Bill Payment"
        puts "-----------------------"
        puts "Payment has been completed."
    end
end