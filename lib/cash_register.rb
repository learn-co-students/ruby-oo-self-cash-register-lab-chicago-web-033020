require 'pry'

class CashRegister
attr_accessor :total, :discount
attr_reader :items

    def initialize(discount = nil)
        @total = 0
        @discount = discount
        @items = []
        @price = 0
    end

    def add_item(item, price, quantity = 1)
        @quantity = quantity
        @price = price
        self.total += (price * quantity)
        quantity.times {@items << item}
        
    end

    def apply_discount
       if discount
         self.total = (self.total - (self.total * (discount.to_f * 0.01)).to_i)
         "After the discount, the total comes to $#{self.total}."
       else
        "There is no discount to apply."
       end
    end

    def void_last_transaction
        @quantity.times {self.total -= @price}
    end

end
