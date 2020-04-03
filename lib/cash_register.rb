class CashRegister
    attr_accessor :total, :discount, :title, :price, :quantity, :items, :last_item

    def initialize(discount=0)
        @total = 0
        @discount = discount
        @items = []
        @last_item = last_item
    end
    
    def add_item(title, price, quantity=1)
        quantity_price = price * quantity
        self.total += (price * quantity)
        quantity.times { @items << title }
        self.last_item = quantity_price
    end

    def apply_discount
        if self.discount > 0
            self.total *= 1 - (self.discount / 100.0)
            p "After the discount, the total comes to $#{self.total.to_i}."
        elsif self.discount == 0
            p "There is no discount to apply."
        end
    end

    def items
        @items
    end

    def void_last_transaction
        self.total -= self.last_item
    end
end