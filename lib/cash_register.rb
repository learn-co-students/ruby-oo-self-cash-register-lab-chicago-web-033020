require 'pry'

class CashRegister
  attr_accessor :discount, :total, :item, :items
  attr_reader :price, :quantity

  def initialize(discount=nil)
    @total = 0 #sets an instance variable @total on initialization to zero
    @discount = discount #optionally takes an employee discount on initialization
    @items = []
  end

  def add_item(item, price, quantity=1)
     @price = price
     @quantity = quantity
     self.total += self.price * self.quantity
     quantity.times {self.items << item}
    end


  def apply_discount
    if self.discount
       self.total = self.total * (1.00 - self.discount.to_f / 100)
      "After the discount, the total comes to $#{self.total.to_i}."
    else
      "There is no discount to apply."
    end
  end


  def void_last_transaction
    self.total -= self.price * self.quantity
  end
end
